
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;


 void swiotlb_unmap_sg_attrs (struct device*,struct scatterlist*,int,int,int *) ;

void
swiotlb_unmap_sg(struct device *hwdev, struct scatterlist *sgl, int nelems,
   int dir)
{
 return swiotlb_unmap_sg_attrs(hwdev, sgl, nelems, dir, ((void*)0));
}
