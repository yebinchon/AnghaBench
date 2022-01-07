
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_eld {int dummy; } ;
struct hdmi_spec_per_pin {int work; struct hdmi_eld sink_eld; } ;
struct hdmi_spec {int num_pins; } ;
struct hda_codec {TYPE_1__* bus; struct hdmi_spec* spec; } ;
struct TYPE_2__ {int workq; } ;


 int cancel_delayed_work (int *) ;
 int flush_workqueue (int ) ;
 struct hdmi_spec_per_pin* get_pin (struct hdmi_spec*,int) ;
 int hdmi_array_free (struct hdmi_spec*) ;
 int kfree (struct hdmi_spec*) ;
 int snd_hda_eld_proc_free (struct hda_codec*,struct hdmi_eld*) ;

__attribute__((used)) static void generic_hdmi_free(struct hda_codec *codec)
{
 struct hdmi_spec *spec = codec->spec;
 int pin_idx;

 for (pin_idx = 0; pin_idx < spec->num_pins; pin_idx++) {
  struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);
  struct hdmi_eld *eld = &per_pin->sink_eld;

  cancel_delayed_work(&per_pin->work);
  snd_hda_eld_proc_free(codec, eld);
 }

 flush_workqueue(codec->bus->workq);
 hdmi_array_free(spec);
 kfree(spec);
}
