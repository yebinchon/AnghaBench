
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long snd_mixer_oss_conv (long,long,long,long,int) ;

__attribute__((used)) static long snd_mixer_oss_conv1(long val, long min, long max, int *old)
{
 if (val == snd_mixer_oss_conv(*old, 0, 100, min, max))
  return *old;
 return snd_mixer_oss_conv(val, min, max, 0, 100);
}
