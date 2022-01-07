
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct aio_ring_info {unsigned long tail; unsigned long nr; int * ring_pages; } ;
struct kioctx {int ctx_lock; int wait; struct aio_ring_info ring_info; } ;
struct TYPE_4__ {scalar_t__ user; int tsk; } ;
struct TYPE_5__ {scalar_t__ prev; } ;
struct kiocb {int ki_users; long ki_user_data; int * ki_eventfd; TYPE_1__ ki_obj; TYPE_2__ ki_run_list; struct kioctx* ki_ctx; } ;
struct io_event {long data; long res; long res2; scalar_t__ obj; } ;
struct aio_ring {unsigned long tail; } ;


 int BUG_ON (int) ;
 int KM_IRQ0 ;
 int KM_IRQ1 ;
 int __aio_put_req (struct kioctx*,struct kiocb*) ;
 struct io_event* aio_ring_event (struct aio_ring_info*,unsigned long,int ) ;
 int dprintk (char*,struct kioctx*,unsigned long,struct kiocb*,scalar_t__,long,long,long) ;
 int eventfd_signal (int *,int) ;
 scalar_t__ is_sync_kiocb (struct kiocb*) ;
 scalar_t__ kiocbIsCancelled (struct kiocb*) ;
 struct aio_ring* kmap_atomic (int ,int ) ;
 int kunmap_atomic (struct aio_ring*,int ) ;
 int list_del_init (TYPE_2__*) ;
 int list_empty (TYPE_2__*) ;
 int pr_debug (char*,struct kiocb*,unsigned long) ;
 int put_aio_ring_event (struct io_event*,int ) ;
 int smp_mb () ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;
 int wake_up_process (int ) ;

int aio_complete(struct kiocb *iocb, long res, long res2)
{
 struct kioctx *ctx = iocb->ki_ctx;
 struct aio_ring_info *info;
 struct aio_ring *ring;
 struct io_event *event;
 unsigned long flags;
 unsigned long tail;
 int ret;
 if (is_sync_kiocb(iocb)) {
  BUG_ON(iocb->ki_users != 1);
  iocb->ki_user_data = res;
  iocb->ki_users = 0;
  wake_up_process(iocb->ki_obj.tsk);
  return 1;
 }

 info = &ctx->ring_info;







 spin_lock_irqsave(&ctx->ctx_lock, flags);

 if (iocb->ki_run_list.prev && !list_empty(&iocb->ki_run_list))
  list_del_init(&iocb->ki_run_list);





 if (kiocbIsCancelled(iocb))
  goto put_rq;

 ring = kmap_atomic(info->ring_pages[0], KM_IRQ1);

 tail = info->tail;
 event = aio_ring_event(info, tail, KM_IRQ0);
 if (++tail >= info->nr)
  tail = 0;

 event->obj = (u64)(unsigned long)iocb->ki_obj.user;
 event->data = iocb->ki_user_data;
 event->res = res;
 event->res2 = res2;

 dprintk("aio_complete: %p[%lu]: %p: %p %Lx %lx %lx\n",
  ctx, tail, iocb, iocb->ki_obj.user, iocb->ki_user_data,
  res, res2);




 smp_wmb();

 info->tail = tail;
 ring->tail = tail;

 put_aio_ring_event(event, KM_IRQ0);
 kunmap_atomic(ring, KM_IRQ1);

 pr_debug("added to ring %p at [%lu]\n", iocb, tail);






 if (iocb->ki_eventfd != ((void*)0))
  eventfd_signal(iocb->ki_eventfd, 1);

put_rq:

 ret = __aio_put_req(ctx, iocb);







 smp_mb();

 if (waitqueue_active(&ctx->wait))
  wake_up(&ctx->wait);

 spin_unlock_irqrestore(&ctx->ctx_lock, flags);
 return ret;
}
