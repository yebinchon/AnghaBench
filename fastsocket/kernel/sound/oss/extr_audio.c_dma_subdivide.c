
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int subdivision; scalar_t__ fragment_size; } ;


 int EINVAL ;
 int MAX_REALTIME_FACTOR ;

__attribute__((used)) static int dma_subdivide(int dev, struct dma_buffparms *dmap, int fact)
{
 if (fact == 0)
 {
  fact = dmap->subdivision;
  if (fact == 0)
   fact = 1;
  return fact;
 }
 if (dmap->subdivision != 0 || dmap->fragment_size)
  return -EINVAL;

 if (fact > MAX_REALTIME_FACTOR)
  return -EINVAL;

 if (fact != 1 && fact != 2 && fact != 4 && fact != 8 && fact != 16)
  return -EINVAL;

 dmap->subdivision = fact;
 return fact;
}
