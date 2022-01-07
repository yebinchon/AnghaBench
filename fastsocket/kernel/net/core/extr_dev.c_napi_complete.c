
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int state; } ;


 int NAPI_STATE_NPSVC ;
 int __napi_complete (struct napi_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int napi_gro_flush (struct napi_struct*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

void napi_complete(struct napi_struct *n)
{
 unsigned long flags;





 if (unlikely(test_bit(NAPI_STATE_NPSVC, &n->state)))
  return;

 napi_gro_flush(n);
 local_irq_save(flags);
 __napi_complete(n);
 local_irq_restore(flags);
}
