
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct mimio {scalar_t__ open; scalar_t__ present; TYPE_1__* idev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int disconnect_sem ;
 int down (int *) ;
 int mimio_dealloc (struct mimio*) ;
 int up (int *) ;
 struct mimio* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;

__attribute__((used)) static void mimio_disconnect(struct usb_interface *ifc)
{
 struct mimio *mimio;

 down(&disconnect_sem);

 mimio = usb_get_intfdata(ifc);
 usb_set_intfdata(ifc, ((void*)0));
 dev_dbg(&mimio->idev->dev, "disconnect\n");

 if (mimio) {
  mimio->present = 0;

  if (mimio->open <= 0)
   mimio_dealloc(mimio);
 }

 up(&disconnect_sem);
}
