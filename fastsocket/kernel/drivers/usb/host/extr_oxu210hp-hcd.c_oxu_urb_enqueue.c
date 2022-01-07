
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct urb {int transfer_buffer_length; int * complete; void* transfer_buffer; int pipe; } ;
struct oxu_murb {int last; struct urb* main; } ;
struct oxu_hcd {int dummy; } ;
typedef int gfp_t ;


 int __oxu_urb_enqueue (struct usb_hcd*,struct urb*,int ) ;
 struct oxu_hcd* hcd_to_oxu (struct usb_hcd*) ;
 int memcpy (struct urb*,struct urb*,int) ;
 scalar_t__ oxu_murb_alloc (struct oxu_hcd*) ;
 int schedule () ;
 int usb_pipebulk (int ) ;

__attribute__((used)) static int oxu_urb_enqueue(struct usb_hcd *hcd, struct urb *urb,
    gfp_t mem_flags)
{
 struct oxu_hcd *oxu = hcd_to_oxu(hcd);
 int num, rem;
 int transfer_buffer_length;
 void *transfer_buffer;
 struct urb *murb;
 int i, ret;


 if (!usb_pipebulk(urb->pipe))
  return __oxu_urb_enqueue(hcd, urb, mem_flags);


 transfer_buffer = urb->transfer_buffer;
 transfer_buffer_length = urb->transfer_buffer_length;

 num = urb->transfer_buffer_length / 4096;
 rem = urb->transfer_buffer_length % 4096;
 if (rem != 0)
  num++;


 if (num == 1)
  return __oxu_urb_enqueue(hcd, urb, mem_flags);



 for (i = 0; i < num - 1; i++) {


  do {
   murb = (struct urb *) oxu_murb_alloc(oxu);
   if (!murb)
    schedule();
  } while (!murb);


  memcpy(murb, urb, sizeof(struct urb));

  murb->transfer_buffer_length = 4096;
  murb->transfer_buffer = transfer_buffer + i * 4096;


  murb->complete = ((void*)0);

  ((struct oxu_murb *) murb)->main = urb;
  ((struct oxu_murb *) murb)->last = 0;




  do {
   ret = __oxu_urb_enqueue(hcd, murb, mem_flags);
   if (ret)
    schedule();
  } while (ret);
 }




 do {
  murb = (struct urb *) oxu_murb_alloc(oxu);
  if (!murb)
   schedule();
 } while (!murb);


 memcpy(murb, urb, sizeof(struct urb));

 murb->transfer_buffer_length = rem > 0 ? rem : 4096;
 murb->transfer_buffer = transfer_buffer + (num - 1) * 4096;


 murb->complete = ((void*)0);

 ((struct oxu_murb *) murb)->main = urb;
 ((struct oxu_murb *) murb)->last = 1;

 do {
  ret = __oxu_urb_enqueue(hcd, murb, mem_flags);
  if (ret)
   schedule();
 } while (ret);

 return ret;
}
