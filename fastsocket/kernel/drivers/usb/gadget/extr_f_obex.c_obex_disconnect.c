
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_composite_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct gserial {TYPE_2__ func; } ;
struct f_obex {int port_num; int can_activate; } ;
struct TYPE_3__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,int ,int) ;
 struct f_obex* port_to_obex (struct gserial*) ;
 int usb_function_deactivate (TYPE_2__*) ;

__attribute__((used)) static void obex_disconnect(struct gserial *g)
{
 struct f_obex *obex = port_to_obex(g);
 struct usb_composite_dev *cdev = g->func.config->cdev;
 int status;

 if (!obex->can_activate)
  return;

 status = usb_function_deactivate(&g->func);
 if (status)
  DBG(cdev, "obex ttyGS%d function deactivate --> %d\n",
   obex->port_num, status);
}
