
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static long snd_mixer_oss_conv(long val, long omin, long omax, long nmin, long nmax)
{
 long orange = omax - omin, nrange = nmax - nmin;

 if (orange == 0)
  return 0;
 return ((nrange * (val - omin)) + (orange / 2)) / orange + nmin;
}
