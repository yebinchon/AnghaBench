
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_MIXOUT (unsigned char) ;
 int MIX_DEFOGAIN ;
 int vortex_mix_setvolumebyte (int *,unsigned char,int ) ;
 int vortex_route (int *,int,unsigned char,int ,unsigned char) ;

__attribute__((used)) static void
vortex_connection_mix_adb(vortex_t * vortex, int en, unsigned char ch,
     unsigned char mix, unsigned char dest)
{
 vortex_route(vortex, en, ch, ADB_MIXOUT(mix), dest);
 vortex_mix_setvolumebyte(vortex, mix, MIX_DEFOGAIN);
}
