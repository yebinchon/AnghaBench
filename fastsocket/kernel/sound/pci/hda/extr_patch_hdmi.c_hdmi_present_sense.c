
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parsed_hdmi_eld {int dummy; } ;
struct hdmi_eld {int monitor_present; int eld_valid; scalar_t__ eld_size; int lock; int info; int eld_buffer; } ;
struct hdmi_spec_per_pin {TYPE_2__* eld_ctl; int work; int pin_nid; struct hdmi_eld sink_eld; struct hda_codec* codec; } ;
struct hdmi_spec {struct hdmi_eld temp_eld; } ;
struct hda_codec {TYPE_1__* bus; int addr; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int card; int workq; } ;


 int AC_PINSENSE_ELDV ;
 int AC_PINSENSE_PRESENCE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int SND_PR_VERBOSE ;
 int _snd_printd (int ,char*,int ,int ,int,int) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (int *,int ,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int snd_ctl_notify (int ,int,int *) ;
 int snd_hda_pin_sense (struct hda_codec*,int ) ;
 scalar_t__ snd_hdmi_get_eld (struct hda_codec*,int ,int ,scalar_t__*) ;
 scalar_t__ snd_hdmi_parse_eld (int *,int ,scalar_t__) ;
 int snd_hdmi_show_eld (int *) ;

__attribute__((used)) static void hdmi_present_sense(struct hdmi_spec_per_pin *per_pin, int repoll)
{
 struct hda_codec *codec = per_pin->codec;
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_eld *eld = &spec->temp_eld;
 struct hdmi_eld *pin_eld = &per_pin->sink_eld;
 hda_nid_t pin_nid = per_pin->pin_nid;
 int present = snd_hda_pin_sense(codec, pin_nid);
 bool update_eld = 0;
 bool eld_changed = 0;

 pin_eld->monitor_present = !!(present & AC_PINSENSE_PRESENCE);
 if (pin_eld->monitor_present)
  eld->eld_valid = !!(present & AC_PINSENSE_ELDV);
 else
  eld->eld_valid = 0;

 _snd_printd(SND_PR_VERBOSE,
  "HDMI status: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\n",
  codec->addr, pin_nid, pin_eld->monitor_present, eld->eld_valid);

 if (eld->eld_valid) {
  if (snd_hdmi_get_eld(codec, pin_nid, eld->eld_buffer,
           &eld->eld_size) < 0)
   eld->eld_valid = 0;
  else {
   memset(&eld->info, 0, sizeof(struct parsed_hdmi_eld));
   if (snd_hdmi_parse_eld(&eld->info, eld->eld_buffer,
          eld->eld_size) < 0)
    eld->eld_valid = 0;
  }

  if (eld->eld_valid) {
   snd_hdmi_show_eld(&eld->info);
   update_eld = 1;
  }
  else if (repoll) {
   queue_delayed_work(codec->bus->workq,
        &per_pin->work,
        msecs_to_jiffies(300));
   return;
  }
 }

 mutex_lock(&pin_eld->lock);
 if (pin_eld->eld_valid && !eld->eld_valid) {
  update_eld = 1;
  eld_changed = 1;
 }
 if (update_eld) {
  pin_eld->eld_valid = eld->eld_valid;
  eld_changed = pin_eld->eld_size != eld->eld_size ||
         memcmp(pin_eld->eld_buffer, eld->eld_buffer,
         eld->eld_size) != 0;
  if (eld_changed)
   memcpy(pin_eld->eld_buffer, eld->eld_buffer,
          eld->eld_size);
  pin_eld->eld_size = eld->eld_size;
  pin_eld->info = eld->info;
 }
 mutex_unlock(&pin_eld->lock);

 if (eld_changed)
  snd_ctl_notify(codec->bus->card,
          SNDRV_CTL_EVENT_MASK_VALUE | SNDRV_CTL_EVENT_MASK_INFO,
          &per_pin->eld_ctl->id);
}
