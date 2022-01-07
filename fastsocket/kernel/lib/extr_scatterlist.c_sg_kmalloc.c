
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 unsigned int SG_MAX_SINGLE_ALLOC ;
 scalar_t__ __get_free_page (int ) ;
 struct scatterlist* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct scatterlist *sg_kmalloc(unsigned int nents, gfp_t gfp_mask)
{
 if (nents == SG_MAX_SINGLE_ALLOC)
  return (struct scatterlist *) __get_free_page(gfp_mask);
 else
  return kmalloc(nents * sizeof(struct scatterlist), gfp_mask);
}
