
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int state; int nodename; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int XBT_NIL ;
 int XenbusStateClosing ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;
 int xenbus_printf (int ,int ,char*,char*,int) ;
 int xenbus_scanf (int ,int ,char*,char*,int*) ;

int xenbus_switch_state(struct xenbus_device *dev, enum xenbus_state state)
{
 int current_state;
 int err;

 if (state == dev->state)
  return 0;

 err = xenbus_scanf(XBT_NIL, dev->nodename, "state", "%d",
      &current_state);
 if (err != 1)
  return 0;

 err = xenbus_printf(XBT_NIL, dev->nodename, "state", "%d", state);
 if (err) {
  if (state != XenbusStateClosing)
   xenbus_dev_fatal(dev, err, "writing new state");
  return err;
 }

 dev->state = state;

 return 0;
}
