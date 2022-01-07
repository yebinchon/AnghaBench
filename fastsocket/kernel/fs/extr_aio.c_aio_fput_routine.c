
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct kioctx {int ctx_lock; } ;
struct kiocb {int * ki_filp; int ki_list; struct kioctx* ki_ctx; } ;
struct TYPE_3__ {int next; } ;


 int __fput (int *) ;
 TYPE_1__ fput_head ;
 int fput_lock ;
 scalar_t__ likely (int) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 struct kiocb* list_kiocb (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int really_put_req (struct kioctx*,struct kiocb*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void aio_fput_routine(struct work_struct *data)
{
 spin_lock_irq(&fput_lock);
 while (likely(!list_empty(&fput_head))) {
  struct kiocb *req = list_kiocb(fput_head.next);
  struct kioctx *ctx = req->ki_ctx;

  list_del(&req->ki_list);
  spin_unlock_irq(&fput_lock);


  if (req->ki_filp != ((void*)0))
   __fput(req->ki_filp);


  rcu_read_lock();
  spin_lock_irq(&ctx->ctx_lock);
  really_put_req(ctx, req);




  spin_unlock_irq(&ctx->ctx_lock);
  rcu_read_unlock();

  spin_lock_irq(&fput_lock);
 }
 spin_unlock_irq(&fput_lock);
}
