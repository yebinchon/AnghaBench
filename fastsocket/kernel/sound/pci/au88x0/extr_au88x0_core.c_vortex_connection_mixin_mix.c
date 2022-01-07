
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int MIX_DEFIGAIN ;
 int vortex_mix_disableinput (int *,unsigned char,unsigned char,int) ;
 int vortex_mix_enableinput (int *,unsigned char,unsigned char) ;
 int vortex_mix_setinputvolumebyte (int *,unsigned char,unsigned char,int ) ;

__attribute__((used)) static void
vortex_connection_mixin_mix(vortex_t * vortex, int en, unsigned char mixin,
       unsigned char mix, int a)
{
 if (en) {
  vortex_mix_enableinput(vortex, mix, mixin);
  vortex_mix_setinputvolumebyte(vortex, mix, mixin, MIX_DEFIGAIN);
 } else
  vortex_mix_disableinput(vortex, mix, mixin, a);
}
