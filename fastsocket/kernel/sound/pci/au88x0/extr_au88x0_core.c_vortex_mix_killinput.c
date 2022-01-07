
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int* mchannels ;
 int* rampchs ;
 int vortex_mix_setenablebit (int *,unsigned char,int,int ) ;
 int vortex_mix_setinputvolumebyte (int *,unsigned char,int,int) ;

__attribute__((used)) static void
vortex_mix_killinput(vortex_t * vortex, unsigned char mix, int mixin)
{
 rampchs[mix] &= ~(1 << mixin);
 vortex_mix_setinputvolumebyte(vortex, mix, mixin, 0x80);
 mchannels[mix] &= ~(1 << mixin);
 vortex_mix_setenablebit(vortex, mix, mixin, 0);
}
