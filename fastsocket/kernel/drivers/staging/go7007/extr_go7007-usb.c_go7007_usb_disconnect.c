
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct urb {struct go7007_usb* transfer_buffer; } ;
struct go7007_usb {struct urb* intr_urb; struct urb** audio_urbs; struct urb** video_urbs; } ;
struct go7007 {struct go7007_usb* hpi_context; int status; } ;


 int STATUS_SHUTDOWN ;
 int go7007_remove (struct go7007*) ;
 int kfree (struct go7007_usb*) ;
 int usb_free_urb (struct urb*) ;
 struct go7007* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (struct urb*) ;

__attribute__((used)) static void go7007_usb_disconnect(struct usb_interface *intf)
{
 struct go7007 *go = usb_get_intfdata(intf);
 struct go7007_usb *usb = go->hpi_context;
 struct urb *vurb, *aurb;
 int i;

 go->status = STATUS_SHUTDOWN;
 usb_kill_urb(usb->intr_urb);


 for (i = 0; i < 8; ++i) {
  vurb = usb->video_urbs[i];
  if (vurb) {
   usb_kill_urb(vurb);
   if (vurb->transfer_buffer)
    kfree(vurb->transfer_buffer);
   usb_free_urb(vurb);
  }
  aurb = usb->audio_urbs[i];
  if (aurb) {
   usb_kill_urb(aurb);
   if (aurb->transfer_buffer)
    kfree(aurb->transfer_buffer);
   usb_free_urb(aurb);
  }
 }
 kfree(usb->intr_urb->transfer_buffer);
 usb_free_urb(usb->intr_urb);

 kfree(go->hpi_context);

 go7007_remove(go);
}
