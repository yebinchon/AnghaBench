
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_frame {int ac97_pcm_r; int ac97_pcm_l; } ;
typedef int __u16 ;



void bf5xx_ac97_to_pcm(const struct ac97_frame *src, __u16 *dst,
  size_t count)
{
 while (count--) {
  *(dst++) = src->ac97_pcm_l;
  *(dst++) = src->ac97_pcm_r;
  src++;
 }
}
