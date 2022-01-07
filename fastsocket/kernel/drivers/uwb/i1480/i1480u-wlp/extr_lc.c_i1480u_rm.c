
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc {int dummy; } ;
struct TYPE_2__ {struct uwb_rc* rc; } ;
struct i1480u {int usb_dev; TYPE_1__ wlp; int notif_urb; int usb_iface; } ;


 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int usb_put_dev (int ) ;
 int usb_set_intfdata (int ,int *) ;
 int uwb_rc_put (struct uwb_rc*) ;
 int wlp_remove (TYPE_1__*) ;

__attribute__((used)) static void i1480u_rm(struct i1480u *i1480u)
{
 struct uwb_rc *rc = i1480u->wlp.rc;
 usb_set_intfdata(i1480u->usb_iface, ((void*)0));




 wlp_remove(&i1480u->wlp);
 uwb_rc_put(rc);
 usb_put_dev(i1480u->usb_dev);
}
