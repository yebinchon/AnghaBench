
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_in {int iir_enable; scalar_t__ running; } ;


 int audio_dsp_set_tx_iir (struct audio_in*) ;

__attribute__((used)) static void audio_enable_tx_iir(struct audio_in *audio, int enable)
{
 if (audio->iir_enable != enable) {
  audio->iir_enable = enable;
  if (audio->running)
   audio_dsp_set_tx_iir(audio);
 }
}
