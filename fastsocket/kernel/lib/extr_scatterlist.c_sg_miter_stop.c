
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_mapping_iter {scalar_t__ consumed; scalar_t__ length; int __flags; int * addr; int * page; int __offset; } ;


 int KM_BIO_SRC_IRQ ;
 int SG_MITER_ATOMIC ;
 int SG_MITER_TO_SG ;
 int WARN_ON (int) ;
 int flush_kernel_dcache_page (int *) ;
 int irqs_disabled () ;
 int kunmap (int *) ;
 int kunmap_atomic (int *,int ) ;

void sg_miter_stop(struct sg_mapping_iter *miter)
{
 WARN_ON(miter->consumed > miter->length);


 if (miter->addr) {
  miter->__offset += miter->consumed;

  if (miter->__flags & SG_MITER_TO_SG)
   flush_kernel_dcache_page(miter->page);

  if (miter->__flags & SG_MITER_ATOMIC) {
   WARN_ON(!irqs_disabled());
   kunmap_atomic(miter->addr, KM_BIO_SRC_IRQ);
  } else
   kunmap(miter->page);

  miter->page = ((void*)0);
  miter->addr = ((void*)0);
  miter->length = 0;
  miter->consumed = 0;
 }
}
