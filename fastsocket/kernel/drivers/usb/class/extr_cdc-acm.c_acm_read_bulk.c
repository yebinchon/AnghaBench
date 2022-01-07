
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; int actual_length; struct acm_ru* context; } ;
struct acm_ru {int list; struct acm_rb* buffer; struct acm* instance; } ;
struct acm_rb {int list; int size; } ;
struct acm {int urb_task; int susp_count; int read_lock; int spare_read_bufs; int spare_read_urbs; int filled_read_bufs; int processing; TYPE_1__* data; int dev; } ;
struct TYPE_2__ {int dev; } ;


 int ACM_READY (struct acm*) ;
 int dbg (char*,int) ;
 int dev_dbg (int *,char*,...) ;
 scalar_t__ likely (int) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;
 int usb_mark_last_busy (int ) ;

__attribute__((used)) static void acm_read_bulk(struct urb *urb)
{
 struct acm_rb *buf;
 struct acm_ru *rcv = urb->context;
 struct acm *acm = rcv->instance;
 int status = urb->status;

 dbg("Entering acm_read_bulk with status %d", status);

 if (!ACM_READY(acm)) {
  dev_dbg(&acm->data->dev, "Aborting, acm not ready");
  return;
 }
 usb_mark_last_busy(acm->dev);

 if (status)
  dev_dbg(&acm->data->dev, "bulk rx status %d\n", status);

 buf = rcv->buffer;
 buf->size = urb->actual_length;

 if (likely(status == 0)) {
  spin_lock(&acm->read_lock);
  acm->processing++;
  list_add_tail(&rcv->list, &acm->spare_read_urbs);
  list_add_tail(&buf->list, &acm->filled_read_bufs);
  spin_unlock(&acm->read_lock);
 } else {

  spin_lock(&acm->read_lock);
  list_add_tail(&rcv->list, &acm->spare_read_urbs);
  list_add(&buf->list, &acm->spare_read_bufs);
  spin_unlock(&acm->read_lock);


 }
 if (likely(!acm->susp_count))
  tasklet_schedule(&acm->urb_task);
}
