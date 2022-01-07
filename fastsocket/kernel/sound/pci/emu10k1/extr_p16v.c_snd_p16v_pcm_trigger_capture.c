
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; } ;
struct snd_emu10k1 {int dummy; } ;


 int BASIC_INTERRUPT ;
 int EINVAL ;
 int INTE2_CAPTURE_CH_0_HALF_LOOP ;
 int INTE2_CAPTURE_CH_0_LOOP ;


 int snd_emu10k1_ptr20_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr20_write (struct snd_emu10k1*,int ,int ,int) ;
 int snd_p16v_intr_disable (struct snd_emu10k1*,int) ;
 int snd_p16v_intr_enable (struct snd_emu10k1*,int) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_p16v_pcm_trigger_capture(struct snd_pcm_substream *substream,
                                   int cmd)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 int channel = 0;
 int result = 0;
 u32 inte = INTE2_CAPTURE_CH_0_LOOP | INTE2_CAPTURE_CH_0_HALF_LOOP;

 switch (cmd) {
 case 129:
  snd_p16v_intr_enable(emu, inte);
  snd_emu10k1_ptr20_write(emu, BASIC_INTERRUPT, 0, snd_emu10k1_ptr20_read(emu, BASIC_INTERRUPT, 0)|(0x100<<channel));
  epcm->running = 1;
  break;
 case 128:
  snd_emu10k1_ptr20_write(emu, BASIC_INTERRUPT, 0, snd_emu10k1_ptr20_read(emu, BASIC_INTERRUPT, 0) & ~(0x100<<channel));
  snd_p16v_intr_disable(emu, inte);

  epcm->running = 0;
  break;
 default:
  result = -EINVAL;
  break;
 }
 return result;
}
