
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int* mchannels ;
 int vortex_mix_killinput (int *,unsigned char,int) ;
 int vortex_mix_setenablebit (int *,unsigned char,int,int) ;
 int vortex_mix_setinputvolumebyte (int *,unsigned char,int,int) ;

__attribute__((used)) static void
vortex_mix_enableinput(vortex_t * vortex, unsigned char mix, int mixin)
{
 vortex_mix_killinput(vortex, mix, mixin);
 if ((mchannels[mix] & (1 << mixin)) == 0) {
  vortex_mix_setinputvolumebyte(vortex, mix, mixin, 0x80);
  mchannels[mix] |= (1 << mixin);
 }
 vortex_mix_setenablebit(vortex, mix, mixin, 1);
}
