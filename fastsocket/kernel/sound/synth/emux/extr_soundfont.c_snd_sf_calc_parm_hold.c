
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
snd_sf_calc_parm_hold(int msec)
{
 int val = (0x7f * 92 - msec) / 92;
 if (val < 1) val = 1;
 if (val >= 126) val = 126;
 return val;
}
