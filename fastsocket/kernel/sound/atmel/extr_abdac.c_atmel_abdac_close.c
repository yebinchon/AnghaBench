
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atmel_abdac {int * substream; } ;


 struct atmel_abdac* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int atmel_abdac_close(struct snd_pcm_substream *substream)
{
 struct atmel_abdac *dac = snd_pcm_substream_chip(substream);
 dac->substream = ((void*)0);
 return 0;
}
