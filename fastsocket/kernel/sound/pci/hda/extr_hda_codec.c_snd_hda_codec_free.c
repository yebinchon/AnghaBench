
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* free ) (struct hda_codec*) ;} ;
struct hda_codec {size_t addr; struct hda_codec* wcaps; struct hda_codec* modelname; struct hda_codec* chip_name; struct hda_codec* vendor_name; int cmd_cache; int amp_cache; int owner; TYPE_2__* bus; int pm_down_notified; TYPE_1__ patch_ops; int spdif_out; int cvt_setups; int nids; int mixers; int list; int power_work; int jackpoll_work; } ;
struct TYPE_4__ {int ** caddr_tbl; int workq; } ;


 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int flush_workqueue (int ) ;
 int free_hda_cache (int *) ;
 int free_init_pincfgs (struct hda_codec*) ;
 int hda_call_pm_notify (TYPE_2__*,int) ;
 int kfree (struct hda_codec*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int remove_conn_list (struct hda_codec*) ;
 int snd_array_free (int *) ;
 int snd_hda_jack_tbl_clear (struct hda_codec*) ;
 int stub1 (struct hda_codec*) ;

__attribute__((used)) static void snd_hda_codec_free(struct hda_codec *codec)
{
 if (!codec)
  return;
 cancel_delayed_work_sync(&codec->jackpoll_work);
 snd_hda_jack_tbl_clear(codec);
 free_init_pincfgs(codec);




 list_del(&codec->list);
 snd_array_free(&codec->mixers);
 snd_array_free(&codec->nids);
 snd_array_free(&codec->cvt_setups);
 snd_array_free(&codec->spdif_out);
 remove_conn_list(codec);
 codec->bus->caddr_tbl[codec->addr] = ((void*)0);
 if (codec->patch_ops.free)
  codec->patch_ops.free(codec);




 module_put(codec->owner);
 free_hda_cache(&codec->amp_cache);
 free_hda_cache(&codec->cmd_cache);
 kfree(codec->vendor_name);
 kfree(codec->chip_name);
 kfree(codec->modelname);
 kfree(codec->wcaps);
 kfree(codec);
}
