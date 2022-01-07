
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_info_entry {struct snd_ac97* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct TYPE_3__ {int* unchained; int* chained; scalar_t__* id; } ;
struct TYPE_4__ {TYPE_1__ ad18xx; } ;
struct snd_ac97 {int id; int page_mutex; TYPE_2__ spec; } ;


 int AC97_AD_SERIAL_CFG ;
 int AC97_ID_AD1881 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ac97_proc_regs_read_main (struct snd_ac97*,struct snd_info_buffer*,int) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;

__attribute__((used)) static void snd_ac97_proc_regs_read(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct snd_ac97 *ac97 = entry->private_data;

 mutex_lock(&ac97->page_mutex);
 if ((ac97->id & 0xffffff40) == AC97_ID_AD1881) {

  int idx;
  for (idx = 0; idx < 3; idx++)
   if (ac97->spec.ad18xx.id[idx]) {

    snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000,
           ac97->spec.ad18xx.unchained[idx] | ac97->spec.ad18xx.chained[idx]);
    snd_ac97_proc_regs_read_main(ac97, buffer, idx);
   }

  snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG, 0x7000, 0x7000);
 } else {
  snd_ac97_proc_regs_read_main(ac97, buffer, 0);
 }
 mutex_unlock(&ac97->page_mutex);
}
