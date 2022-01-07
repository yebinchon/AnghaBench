
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio {int rx_iir_enable; scalar_t__ running; } ;


 int audio_dsp_set_rx_iir (struct audio*) ;

__attribute__((used)) static int audio_enable_rx_iir(struct audio *audio, int enable)
{
 if (audio->rx_iir_enable != enable) {
  audio->rx_iir_enable = enable;
  if (audio->running)
   audio_dsp_set_rx_iir(audio);
 }
 return 0;
}
