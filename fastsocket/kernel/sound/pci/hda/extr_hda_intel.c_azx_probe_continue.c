
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct azx {int dev_index; int running; int init_failed; int card; int bus; TYPE_1__* fw; int beep_mode; } ;
struct TYPE_2__ {int data; int size; } ;


 int azx_add_card_list (struct azx*) ;
 int azx_codec_configure (struct azx*) ;
 int azx_codec_create (struct azx*,int ) ;
 int azx_mixer_create (struct azx*) ;
 int azx_notifier_register (struct azx*) ;
 int * beep_mode ;
 int * model ;
 int power_down_all_codecs (struct azx*) ;
 int* probe_only ;
 int release_firmware (TYPE_1__*) ;
 int snd_card_register (int ) ;
 int snd_hda_build_pcms (int ) ;
 int snd_hda_load_patch (int ,int ,int ) ;

__attribute__((used)) static int azx_probe_continue(struct azx *chip)
{
 int dev = chip->dev_index;
 int err;






 err = azx_codec_create(chip, model[dev]);
 if (err < 0)
  goto out_free;
 if ((probe_only[dev] & 1) == 0) {
  err = azx_codec_configure(chip);
  if (err < 0)
   goto out_free;
 }


 err = snd_hda_build_pcms(chip->bus);
 if (err < 0)
  goto out_free;


 err = azx_mixer_create(chip);
 if (err < 0)
  goto out_free;

 err = snd_card_register(chip->card);
 if (err < 0)
  goto out_free;

 chip->running = 1;
 power_down_all_codecs(chip);
 azx_notifier_register(chip);
 azx_add_card_list(chip);

 return 0;

out_free:
 chip->init_failed = 1;
 return err;
}
