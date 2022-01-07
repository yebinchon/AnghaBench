
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int capture_idx_reg; scalar_t__ first_ptr; int running; } ;
struct snd_emu10k1 {int dummy; } ;
typedef int snd_pcm_uframes_t ;


 int bytes_to_frames (struct snd_pcm_runtime*,unsigned int) ;
 int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int udelay (int) ;

__attribute__((used)) static snd_pcm_uframes_t snd_emu10k1_capture_pointer(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 unsigned int ptr;

 if (!epcm->running)
  return 0;
 if (epcm->first_ptr) {
  udelay(50);
  epcm->first_ptr = 0;
 }
 ptr = snd_emu10k1_ptr_read(emu, epcm->capture_idx_reg, 0) & 0x0000ffff;
 return bytes_to_frames(runtime, ptr);
}
