
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int channels; int format; struct esschan* private_data; } ;
struct esschan {int wav_shift; int fmt; int mode; int bob_freq; int frag_size; int dma_size; } ;
struct es1968 {int dummy; } ;




 int ESS_FMT_16BIT ;
 int ESS_FMT_STEREO ;
 int snd_es1968_calc_bob_rate (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ;
 int snd_es1968_capture_setup (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ;
 int snd_es1968_playback_setup (struct es1968*,struct esschan*,struct snd_pcm_runtime*) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct es1968* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_es1968_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct es1968 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct esschan *es = runtime->private_data;

 es->dma_size = snd_pcm_lib_buffer_bytes(substream);
 es->frag_size = snd_pcm_lib_period_bytes(substream);

 es->wav_shift = 1;
 es->fmt = 0;
 if (snd_pcm_format_width(runtime->format) == 16)
  es->fmt |= ESS_FMT_16BIT;
 if (runtime->channels > 1) {
  es->fmt |= ESS_FMT_STEREO;
  if (es->fmt & ESS_FMT_16BIT)
   es->wav_shift++;
 }
 es->bob_freq = snd_es1968_calc_bob_rate(chip, es, runtime);

 switch (es->mode) {
 case 128:
  snd_es1968_playback_setup(chip, es, runtime);
  break;
 case 129:
  snd_es1968_capture_setup(chip, es, runtime);
  break;
 }

 return 0;
}
