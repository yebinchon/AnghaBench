
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vortex_t ;


 int ADB_DMA (unsigned char) ;
 int ADB_SRCIN (unsigned char) ;
 int vortex_route (int *,int,unsigned char,int ,int ) ;

__attribute__((used)) static void
vortex_connection_adbdma_src(vortex_t * vortex, int en, unsigned char ch,
        unsigned char adbdma, unsigned char src)
{
 vortex_route(vortex, en, ch, ADB_DMA(adbdma), ADB_SRCIN(src));
}
