
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_frame {int ac97_tag; int ac97_center; int ac97_lfe; int ac97_sr; int ac97_sl; int ac97_pcm_l; int ac97_pcm_r; } ;
typedef int __u16 ;


 unsigned int SP_FC ;
 unsigned int SP_FL ;
 unsigned int SP_FR ;
 unsigned int SP_LFE ;
 unsigned int SP_SL ;
 unsigned int SP_SR ;
 int TAG_PCM_CENTER ;
 int TAG_PCM_LEFT ;
 int TAG_PCM_LFE ;
 int TAG_PCM_RIGHT ;
 int TAG_PCM_SL ;
 int TAG_PCM_SR ;
 int TAG_VALID ;

void bf5xx_pcm_to_ac97(struct ac97_frame *dst, const __u16 *src,
  size_t count, unsigned int chan_mask)
{
 while (count--) {
  dst->ac97_tag = TAG_VALID;
  if (chan_mask & SP_FL) {
   dst->ac97_pcm_r = *src++;
   dst->ac97_tag |= TAG_PCM_RIGHT;
  }
  if (chan_mask & SP_FR) {
   dst->ac97_pcm_l = *src++;
   dst->ac97_tag |= TAG_PCM_LEFT;

  }
  dst++;
 }
}
