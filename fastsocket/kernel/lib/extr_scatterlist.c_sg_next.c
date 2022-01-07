
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ sg_magic; } ;


 int BUG_ON (int) ;
 scalar_t__ SG_MAGIC ;
 struct scatterlist* sg_chain_ptr (struct scatterlist*) ;
 int sg_is_chain (struct scatterlist*) ;
 scalar_t__ sg_is_last (struct scatterlist*) ;
 scalar_t__ unlikely (int ) ;

struct scatterlist *sg_next(struct scatterlist *sg)
{



 if (sg_is_last(sg))
  return ((void*)0);

 sg++;
 if (unlikely(sg_is_chain(sg)))
  sg = sg_chain_ptr(sg);

 return sg;
}
