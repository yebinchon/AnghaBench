
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int* rampchs ;
 int vortex_mix_killinput (int *,unsigned char,int) ;

__attribute__((used)) static void
vortex_mix_disableinput(vortex_t * vortex, unsigned char mix, int channel,
   int ramp)
{
 if (ramp) {
  rampchs[mix] |= (1 << channel);


  vortex_mix_killinput(vortex, mix, channel);
 } else
  vortex_mix_killinput(vortex, mix, channel);
}
