
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ib_device {int dummy; } ;


 int ib_dma_sync_single_for_device (struct ib_device*,int ,int ,int) ;
 int ib_sg_dma_address (struct ib_device*,struct scatterlist*) ;
 int ib_sg_dma_len (struct ib_device*,struct scatterlist*) ;

__attribute__((used)) static inline void rds_iw_dma_sync_sg_for_device(struct ib_device *dev,
  struct scatterlist *sg, unsigned int sg_dma_len, int direction)
{
 unsigned int i;

 for (i = 0; i < sg_dma_len; ++i) {
  ib_dma_sync_single_for_device(dev,
    ib_sg_dma_address(dev, &sg[i]),
    ib_sg_dma_len(dev, &sg[i]),
    direction);
 }
}
