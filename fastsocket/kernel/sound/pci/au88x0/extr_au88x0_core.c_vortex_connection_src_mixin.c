
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_MIXIN (unsigned char) ;
 int ADB_SRCOUT (unsigned char) ;
 int vortex_route (int *,int,unsigned char,int ,int ) ;

__attribute__((used)) static void
vortex_connection_src_mixin(vortex_t * vortex, int en,
       unsigned char channel, unsigned char src,
       unsigned char mixin)
{
 vortex_route(vortex, en, channel, ADB_SRCOUT(src), ADB_MIXIN(mixin));
}
