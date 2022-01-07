
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iio_shared_ev_pointer {struct iio_detected_event_list* ev_p; } ;
struct TYPE_6__ {int list; } ;
struct TYPE_4__ {int flags; } ;
struct iio_event_interface {scalar_t__ current_events; scalar_t__ max_events; int event_list_lock; int wait; TYPE_3__ det_events; TYPE_1__ handler; } ;
struct TYPE_5__ {int id; int timestamp; } ;
struct iio_detected_event_list {int list; struct iio_shared_ev_pointer* shared_pointer; TYPE_2__ ev; } ;
typedef int s64 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IIO_BUSY_BIT_POS ;
 struct iio_detected_event_list* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

int __iio_push_event(struct iio_event_interface *ev_int,
       int ev_code,
       s64 timestamp,
       struct iio_shared_ev_pointer *
       shared_pointer_p)
{
 struct iio_detected_event_list *ev;
 int ret = 0;


 mutex_lock(&ev_int->event_list_lock);
 if (test_bit(IIO_BUSY_BIT_POS, &ev_int->handler.flags)) {
  if (ev_int->current_events == ev_int->max_events)
   return 0;
  ev = kmalloc(sizeof(*ev), GFP_KERNEL);
  if (ev == ((void*)0)) {
   ret = -ENOMEM;
   goto error_ret;
  }
  ev->ev.id = ev_code;
  ev->ev.timestamp = timestamp;
  ev->shared_pointer = shared_pointer_p;
  if (ev->shared_pointer)
   shared_pointer_p->ev_p = ev;

  list_add_tail(&ev->list, &ev_int->det_events.list);
  ev_int->current_events++;
  mutex_unlock(&ev_int->event_list_lock);
  wake_up_interruptible(&ev_int->wait);
 } else
  mutex_unlock(&ev_int->event_list_lock);

error_ret:
 return ret;
}
