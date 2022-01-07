
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; int rate; } ;
struct TYPE_6__ {int hw_buffer_size; int sw_buffer_size; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_4__ {int shift; TYPE_3__ pcm_rec; TYPE_2__ hw_buf; } ;
struct snd_cs46xx {TYPE_1__ capt; } ;


 int BA1_CBA ;
 int CS46XX_FRAGS ;
 int memset (TYPE_3__*,int ,int) ;
 int snd_cs46xx_poke (struct snd_cs46xx*,int ,int ) ;
 int snd_cs46xx_set_capture_sample_rate (struct snd_cs46xx*,int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs46xx_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_cs46xx_poke(chip, BA1_CBA, chip->capt.hw_buf.addr);
 chip->capt.shift = 2;
 memset(&chip->capt.pcm_rec, 0, sizeof(chip->capt.pcm_rec));
 chip->capt.pcm_rec.sw_buffer_size = snd_pcm_lib_buffer_bytes(substream);
 chip->capt.pcm_rec.hw_buffer_size = runtime->period_size * CS46XX_FRAGS << 2;
 snd_cs46xx_set_capture_sample_rate(chip, runtime->rate);

 return 0;
}
