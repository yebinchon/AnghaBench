
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int run_list; int ctx_lock; } ;
struct kiocb {int ki_run_list; struct kioctx* ki_ctx; } ;


 int assert_spin_locked (int *) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static inline int __queue_kicked_iocb(struct kiocb *iocb)
{
 struct kioctx *ctx = iocb->ki_ctx;

 assert_spin_locked(&ctx->ctx_lock);

 if (list_empty(&iocb->ki_run_list)) {
  list_add_tail(&iocb->ki_run_list,
   &ctx->run_list);
  return 1;
 }
 return 0;
}
