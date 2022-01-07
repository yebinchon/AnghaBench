
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buffparms {int fragment_size; int data_rate; } ;


 int HZ ;

__attribute__((used)) static long dmabuf_timeout(struct dma_buffparms *dmap)
{
 long tmout;

 tmout = (dmap->fragment_size * HZ) / dmap->data_rate;
 tmout += HZ / 5;
 if (tmout < (HZ / 2))
  tmout = HZ / 2;
 if (tmout > 20 * HZ)
  tmout = 20 * HZ;
 return tmout;
}
