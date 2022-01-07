
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_engine {TYPE_1__* dmab; } ;
struct TYPE_2__ {int area; } ;


 int memcpy (int ,unsigned int const*,unsigned int) ;

__attribute__((used)) static int dma_xfer(struct dma_engine *dma,
  const unsigned int *data,
  unsigned int count)
{
 memcpy(dma->dmab->area, data, count);
 return 0;
}
