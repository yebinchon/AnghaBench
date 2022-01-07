
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct acm {int rx_buflimit; TYPE_3__* control; TYPE_2__* ru; TYPE_1__* wb; int ctrlurb; scalar_t__ dev; int drain_wait; scalar_t__ ctrlout; } ;
struct TYPE_7__ {scalar_t__ needs_remote_wakeup; } ;
struct TYPE_6__ {int urb; } ;
struct TYPE_5__ {int urb; } ;


 int ACM_CLOSE_TIMEOUT ;
 int ACM_NW ;
 int HZ ;
 int acm_set_control (struct acm*,scalar_t__) ;
 int acm_wb_is_avail (struct acm*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_mutex ;
 int usb_autopm_get_interface (TYPE_3__*) ;
 int usb_autopm_put_interface (TYPE_3__*) ;
 int usb_kill_urb (int ) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static void acm_port_down(struct acm *acm, int drain)
{
 int i, nr = acm->rx_buflimit;
 mutex_lock(&open_mutex);
 if (acm->dev) {
  usb_autopm_get_interface(acm->control);
  acm_set_control(acm, acm->ctrlout = 0);

  if (drain) {
   wait_event_interruptible_timeout(acm->drain_wait,
    (ACM_NW == acm_wb_is_avail(acm)) || !acm->dev,
     ACM_CLOSE_TIMEOUT * HZ);
  }
  usb_kill_urb(acm->ctrlurb);
  for (i = 0; i < ACM_NW; i++)
   usb_kill_urb(acm->wb[i].urb);
  for (i = 0; i < nr; i++)
   usb_kill_urb(acm->ru[i].urb);
  acm->control->needs_remote_wakeup = 0;
  usb_autopm_put_interface(acm->control);
 }
 mutex_unlock(&open_mutex);
}
