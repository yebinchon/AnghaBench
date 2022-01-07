
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* msg16; void* msg32; } ;
struct adsp_event {int type; int is16; unsigned int msg_id; size_t size; int list; TYPE_1__ data; } ;
struct adsp_device {int event_wait; int event_queue_lock; int event_queue; } ;


 size_t ADSP_EVENT_MAX_SIZE ;
 unsigned int EVENT_MSG_ID ;
 int GFP_ATOMIC ;
 struct adsp_event* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pr_err (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void adsp_event(void *driver_data, unsigned id, size_t len,
         void (*getevent)(void *ptr, size_t len))
{
 struct adsp_device *adev = driver_data;
 struct adsp_event *event;
 unsigned long flags;

 if (len > ADSP_EVENT_MAX_SIZE) {
  pr_err("adsp_event: event too large (%d bytes)\n", len);
  return;
 }

 event = kmalloc(sizeof(*event), GFP_ATOMIC);
 if (!event) {
  pr_err("adsp_event: cannot allocate buffer\n");
  return;
 }

 if (id != EVENT_MSG_ID) {
  event->type = 0;
  event->is16 = 0;
  event->msg_id = id;
  event->size = len;

  getevent(event->data.msg16, len);
 } else {
  event->type = 1;
  event->is16 = 1;
  event->msg_id = id;
  event->size = len;
  getevent(event->data.msg32, len);
 }

 spin_lock_irqsave(&adev->event_queue_lock, flags);
 list_add_tail(&event->list, &adev->event_queue);
 spin_unlock_irqrestore(&adev->event_queue_lock, flags);
 wake_up(&adev->event_wait);
}
