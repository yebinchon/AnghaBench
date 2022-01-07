
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_engine {TYPE_1__* dmab; } ;
struct TYPE_2__ {unsigned char* area; } ;



__attribute__((used)) static unsigned char *dma_get_buffer_addr(struct dma_engine *dma)
{
 return dma->dmab->area;
}
