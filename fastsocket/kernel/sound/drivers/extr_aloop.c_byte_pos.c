
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loopback_pcm {unsigned long long pcm_rate_shift; unsigned int pcm_salign; } ;


 unsigned int HZ ;
 unsigned long long NO_PITCH ;
 unsigned int div_u64 (unsigned long long,unsigned int) ;

__attribute__((used)) static inline unsigned int byte_pos(struct loopback_pcm *dpcm, unsigned int x)
{
 if (dpcm->pcm_rate_shift == NO_PITCH) {
  x /= HZ;
 } else {
  x = div_u64(NO_PITCH * (unsigned long long)x,
       HZ * (unsigned long long)dpcm->pcm_rate_shift);
 }
 return x - (x % dpcm->pcm_salign);
}
