
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kioctx {int wq; int wait; } ;


 int HZ ;
 int aio_wq ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 int smp_mb () ;
 scalar_t__ waitqueue_active (int *) ;

__attribute__((used)) static void aio_queue_work(struct kioctx * ctx)
{
 unsigned long timeout;




 smp_mb();
 if (waitqueue_active(&ctx->wait))
  timeout = 1;
 else
  timeout = HZ/10;
 queue_delayed_work(aio_wq, &ctx->wq, timeout);
}
