
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_emu8k_pcm {int voices; scalar_t__* loop_start; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
struct TYPE_2__ {struct snd_emu8k_pcm* private_data; } ;


 int CHECK_SCHEDULER () ;
 int EMU8000_SMALW_WRITE (struct snd_emu8000*,scalar_t__) ;
 int EMU8000_SMARW_WRITE (struct snd_emu8000*,scalar_t__) ;
 int EMU8000_SMLD_WRITE (struct snd_emu8000*,int ) ;
 int EMU8000_SMRD_WRITE (struct snd_emu8000*,int ) ;
 int snd_emu8000_write_wait (struct snd_emu8000*,int) ;

__attribute__((used)) static int emu8k_pcm_silence(struct snd_pcm_substream *subs,
        int voice,
        snd_pcm_uframes_t pos,
        snd_pcm_uframes_t count)
{
 struct snd_emu8k_pcm *rec = subs->runtime->private_data;
 struct snd_emu8000 *emu = rec->emu;

 snd_emu8000_write_wait(emu, 1);
 EMU8000_SMALW_WRITE(emu, rec->loop_start[0] + pos);
 if (rec->voices > 1)
  EMU8000_SMARW_WRITE(emu, rec->loop_start[1] + pos);
 while (count-- > 0) {
  CHECK_SCHEDULER();
  EMU8000_SMLD_WRITE(emu, 0);
  if (rec->voices > 1) {
   CHECK_SCHEDULER();
   EMU8000_SMRD_WRITE(emu, 0);
  }
 }
 return 0;
}
