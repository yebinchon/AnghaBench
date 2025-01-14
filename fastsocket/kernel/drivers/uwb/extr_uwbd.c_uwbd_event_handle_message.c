
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_event {size_t message; struct uwb_rc* rc; } ;
struct TYPE_5__ {int (* handler ) (struct uwb_event*) ;int name; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 int dev_err (int *,char*,size_t,...) ;
 int stub1 (struct uwb_event*) ;
 TYPE_2__* uwbd_message_handlers ;

__attribute__((used)) static void uwbd_event_handle_message(struct uwb_event *evt)
{
 struct uwb_rc *rc;
 int result;

 rc = evt->rc;

 if (evt->message < 0 || evt->message >= ARRAY_SIZE(uwbd_message_handlers)) {
  dev_err(&rc->uwb_dev.dev, "UWBD: invalid message type %d\n", evt->message);
  return;
 }

 result = uwbd_message_handlers[evt->message].handler(evt);
 if (result < 0)
  dev_err(&rc->uwb_dev.dev, "UWBD: '%s' message failed: %d\n",
   uwbd_message_handlers[evt->message].name, result);
}
