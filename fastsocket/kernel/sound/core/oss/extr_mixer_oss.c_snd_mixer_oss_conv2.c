
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long snd_mixer_oss_conv (long,int ,int,long,long) ;

__attribute__((used)) static long snd_mixer_oss_conv2(long val, long min, long max)
{
 return snd_mixer_oss_conv(val, 0, 100, min, max);
}
