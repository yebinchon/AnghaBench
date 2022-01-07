
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct tty_struct {size_t index; struct acm* driver_data; int flags; } ;
struct file {int dummy; } ;
struct TYPE_13__ {int count; int flags; } ;
struct acm {int ctrlout; int ctrl_caps; int rx_buflimit; TYPE_7__ port; int mutex; TYPE_5__* control; TYPE_3__* ctrlurb; int urb_task; scalar_t__ throttle; int spare_read_bufs; TYPE_2__* rb; int spare_read_urbs; TYPE_1__* ru; int filled_read_bufs; scalar_t__ dev; } ;
struct TYPE_12__ {int needs_remote_wakeup; } ;
struct TYPE_11__ {scalar_t__ dev; } ;
struct TYPE_10__ {int list; } ;
struct TYPE_9__ {int list; } ;


 int ACM_CTRL_DTR ;
 int ACM_CTRL_RTS ;
 int ASYNCB_INITIALIZED ;
 int EIO ;
 int ENODEV ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TTY_NO_WRITE_SPLIT ;
 int USB_CDC_CAP_LINE ;
 scalar_t__ acm_set_control (struct acm*,int) ;
 struct acm** acm_table ;
 int dbg (char*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int open_mutex ;
 int set_bit (int ,int *) ;
 int tasklet_schedule (int *) ;
 int tty_port_block_til_ready (TYPE_7__*,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (TYPE_7__*,struct tty_struct*) ;
 scalar_t__ usb_autopm_get_interface (TYPE_5__*) ;
 int usb_autopm_put_interface (TYPE_5__*) ;
 int usb_kill_urb (TYPE_3__*) ;
 scalar_t__ usb_submit_urb (TYPE_3__*,int ) ;

__attribute__((used)) static int acm_tty_open(struct tty_struct *tty, struct file *filp)
{
 struct acm *acm;
 int rv = -ENODEV;
 int i;
 dbg("Entering acm_tty_open.");

 mutex_lock(&open_mutex);

 acm = acm_table[tty->index];
 if (!acm || !acm->dev)
  goto err_out;
 else
  rv = 0;

 set_bit(TTY_NO_WRITE_SPLIT, &tty->flags);

 tty->driver_data = acm;
 tty_port_tty_set(&acm->port, tty);

 if (usb_autopm_get_interface(acm->control) < 0)
  goto early_bail;
 else
  acm->control->needs_remote_wakeup = 1;

 mutex_lock(&acm->mutex);
 if (acm->port.count++) {
  usb_autopm_put_interface(acm->control);
  goto done;
 }

 acm->ctrlurb->dev = acm->dev;
 if (usb_submit_urb(acm->ctrlurb, GFP_KERNEL)) {
  dbg("usb_submit_urb(ctrl irq) failed");
  goto bail_out;
 }

 if (0 > acm_set_control(acm, acm->ctrlout = ACM_CTRL_DTR | ACM_CTRL_RTS) &&
     (acm->ctrl_caps & USB_CDC_CAP_LINE))
  goto full_bailout;

 usb_autopm_put_interface(acm->control);

 INIT_LIST_HEAD(&acm->spare_read_urbs);
 INIT_LIST_HEAD(&acm->spare_read_bufs);
 INIT_LIST_HEAD(&acm->filled_read_bufs);

 for (i = 0; i < acm->rx_buflimit; i++)
  list_add(&(acm->ru[i].list), &acm->spare_read_urbs);
 for (i = 0; i < acm->rx_buflimit; i++)
  list_add(&(acm->rb[i].list), &acm->spare_read_bufs);

 acm->throttle = 0;

 set_bit(ASYNCB_INITIALIZED, &acm->port.flags);
 rv = tty_port_block_til_ready(&acm->port, tty, filp);
 tasklet_schedule(&acm->urb_task);
done:
 mutex_unlock(&acm->mutex);
err_out:
 mutex_unlock(&open_mutex);
 return rv;

full_bailout:
 usb_kill_urb(acm->ctrlurb);
bail_out:
 usb_autopm_put_interface(acm->control);
 acm->port.count--;
 mutex_unlock(&acm->mutex);
early_bail:
 mutex_unlock(&open_mutex);
 tty_port_tty_set(&acm->port, ((void*)0));
 return -EIO;
}
