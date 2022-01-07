
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_card {int dummy; } ;
struct TYPE_4__ {int (* free ) (struct hda_codec*) ;} ;
struct hda_codec {int num_pcms; int * owner; scalar_t__ spdif_status_reset; int * slave_dig_outs; int * preset; TYPE_1__* pcm_info; int verbs; int spdif_out; int cvt_setups; int driver_pins; int cmd_cache; int amp_cache; int * spec; int * proc_widget_hook; TYPE_2__ patch_ops; int power_jiffies; scalar_t__ power_transition; scalar_t__ power_on; int power_work; int jackpoll_work; struct hda_bus* bus; } ;
struct hda_cache_head {int dummy; } ;
struct hda_bus {int pcm_dev_bits; int workq; struct snd_card* card; } ;
struct hda_amp_info {int dummy; } ;
struct TYPE_3__ {int device; scalar_t__ pcm; } ;


 int EBUSY ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int ) ;
 int flush_workqueue (int ) ;
 int free_hda_cache (int *) ;
 int init_hda_cache (int *,int) ;
 int jiffies ;
 int memset (TYPE_2__*,int ,int) ;
 int module_put (int *) ;
 int snd_array_free (int *) ;
 int snd_device_free (struct snd_card*,scalar_t__) ;
 int snd_hda_ctls_clear (struct hda_codec*) ;
 int snd_hda_jack_tbl_clear (struct hda_codec*) ;
 scalar_t__ snd_hda_lock_devices (struct hda_bus*) ;
 int snd_hda_unlock_devices (struct hda_bus*) ;
 int stub1 (struct hda_codec*) ;

int snd_hda_codec_reset(struct hda_codec *codec)
{
 struct hda_bus *bus = codec->bus;
 struct snd_card *card = bus->card;
 int i;

 if (snd_hda_lock_devices(bus) < 0)
  return -EBUSY;


 cancel_delayed_work_sync(&codec->jackpoll_work);







 snd_hda_ctls_clear(codec);

 for (i = 0; i < codec->num_pcms; i++) {
  if (codec->pcm_info[i].pcm) {
   snd_device_free(card, codec->pcm_info[i].pcm);
   clear_bit(codec->pcm_info[i].device,
      bus->pcm_dev_bits);
  }
 }
 if (codec->patch_ops.free)
  codec->patch_ops.free(codec);
 memset(&codec->patch_ops, 0, sizeof(codec->patch_ops));
 snd_hda_jack_tbl_clear(codec);
 codec->proc_widget_hook = ((void*)0);
 codec->spec = ((void*)0);
 free_hda_cache(&codec->amp_cache);
 free_hda_cache(&codec->cmd_cache);
 init_hda_cache(&codec->amp_cache, sizeof(struct hda_amp_info));
 init_hda_cache(&codec->cmd_cache, sizeof(struct hda_cache_head));

 snd_array_free(&codec->driver_pins);
 snd_array_free(&codec->cvt_setups);
 snd_array_free(&codec->spdif_out);
 snd_array_free(&codec->verbs);
 codec->num_pcms = 0;
 codec->pcm_info = ((void*)0);
 codec->preset = ((void*)0);
 codec->slave_dig_outs = ((void*)0);
 codec->spdif_status_reset = 0;
 module_put(codec->owner);
 codec->owner = ((void*)0);


 snd_hda_unlock_devices(bus);
 return 0;
}
