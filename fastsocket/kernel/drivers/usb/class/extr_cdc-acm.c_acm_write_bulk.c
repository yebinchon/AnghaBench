
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int transfer_buffer_length; int actual_length; struct acm_wb* context; } ;
struct acm_wb {struct acm* instance; } ;
struct acm {int drain_wait; int work; int write_lock; TYPE_1__* data; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ACM_READY (struct acm*) ;
 int acm_write_done (struct acm*,struct acm_wb*) ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ verbose ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void acm_write_bulk(struct urb *urb)
{
 struct acm_wb *wb = urb->context;
 struct acm *acm = wb->instance;
 unsigned long flags;

 if (verbose || urb->status
   || (urb->actual_length != urb->transfer_buffer_length))
  dev_dbg(&acm->data->dev, "tx %d/%d bytes -- > %d\n",
   urb->actual_length,
   urb->transfer_buffer_length,
   urb->status);

 spin_lock_irqsave(&acm->write_lock, flags);
 acm_write_done(acm, wb);
 spin_unlock_irqrestore(&acm->write_lock, flags);
 if (ACM_READY(acm))
  schedule_work(&acm->work);
 else
  wake_up_interruptible(&acm->drain_wait);
}
