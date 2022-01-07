
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int voices; int * block; TYPE_2__* emu; scalar_t__ dram_opened; } ;
struct TYPE_4__ {int memhdr; } ;
struct TYPE_3__ {struct snd_emu8k_pcm* private_data; } ;


 int emu8k_close_dram (TYPE_2__*) ;
 int snd_util_mem_free (int ,int *) ;
 int stop_voice (struct snd_emu8k_pcm*,int) ;

__attribute__((used)) static int emu8k_pcm_hw_free(struct snd_pcm_substream *subs)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;

 if (rec->block) {
  int ch;
  for (ch = 0; ch < rec->voices; ch++)
   stop_voice(rec, ch);
  if (rec->dram_opened)
   emu8k_close_dram(rec->emu);
  snd_util_mem_free(rec->emu->memhdr, rec->block);
  rec->block = ((void*)0);
 }
 return 0;
}
