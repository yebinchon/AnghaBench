
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadgetfs_event {int type; } ;
struct dev_data {int setup_abort; unsigned int ev_next; struct usb_gadgetfs_event* event; int state; } ;
typedef enum usb_gadgetfs_event_type { ____Placeholder_usb_gadgetfs_event_type } usb_gadgetfs_event_type ;


 int BUG () ;
 int BUG_ON (int) ;
 int DBG (struct dev_data*,char*,unsigned int,int) ;




 scalar_t__ N_EVENT ;
 int STATE_DEV_SETUP ;
 int VDEBUG (struct dev_data*,char*,int,int) ;
 int memmove (struct usb_gadgetfs_event*,struct usb_gadgetfs_event*,int) ;
 int memset (struct usb_gadgetfs_event*,int ,int) ;

__attribute__((used)) static struct usb_gadgetfs_event *
next_event (struct dev_data *dev, enum usb_gadgetfs_event_type type)
{
 struct usb_gadgetfs_event *event;
 unsigned i;

 switch (type) {

 case 130:
  if (dev->state == STATE_DEV_SETUP)
   dev->setup_abort = 1;

 case 131:
  dev->ev_next = 0;
  break;
 case 129:
 case 128:

  for (i = 0; i != dev->ev_next; i++) {
   if (dev->event [i].type != type)
    continue;
   DBG(dev, "discard old event[%d] %d\n", i, type);
   dev->ev_next--;
   if (i == dev->ev_next)
    break;

   memmove (&dev->event [i], &dev->event [i + 1],
    sizeof (struct usb_gadgetfs_event)
     * (dev->ev_next - i));
  }
  break;
 default:
  BUG ();
 }
 VDEBUG(dev, "event[%d] = %d\n", dev->ev_next, type);
 event = &dev->event [dev->ev_next++];
 BUG_ON (dev->ev_next > N_EVENT);
 memset (event, 0, sizeof *event);
 event->type = type;
 return event;
}
