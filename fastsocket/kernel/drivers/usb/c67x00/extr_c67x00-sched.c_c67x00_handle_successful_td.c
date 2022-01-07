
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int interval; int actual_length; int transfer_buffer_length; } ;
struct c67x00_td {int privdata; int pipe; struct urb* urb; } ;
struct c67x00_hcd {int dummy; } ;
 int c67x00_clear_pipe (struct c67x00_hcd*,struct c67x00_td*) ;
 int c67x00_end_of_data (struct c67x00_td*) ;
 int c67x00_giveback_urb (struct c67x00_hcd*,struct urb*,int ) ;
 scalar_t__ td_actual_bytes (struct c67x00_td*) ;
 int unlikely (int ) ;
 int usb_pipetype (int ) ;

__attribute__((used)) static void c67x00_handle_successful_td(struct c67x00_hcd *c67x00,
     struct c67x00_td *td)
{
 struct urb *urb = td->urb;

 if (!urb)
  return;

 urb->actual_length += td_actual_bytes(td);

 switch (usb_pipetype(td->pipe)) {

 case 131:
  switch (td->privdata) {
  case 129:
   urb->interval =
       urb->transfer_buffer_length ?
       133 : 128;

   urb->actual_length = 0;
   break;

  case 133:
   if (c67x00_end_of_data(td)) {
    urb->interval = 128;
    c67x00_clear_pipe(c67x00, td);
   }
   break;

  case 128:
   urb->interval = 0;
   c67x00_giveback_urb(c67x00, urb, 0);
   break;
  }
  break;

 case 130:
 case 132:
  if (unlikely(c67x00_end_of_data(td))) {
   c67x00_clear_pipe(c67x00, td);
   c67x00_giveback_urb(c67x00, urb, 0);
  }
  break;
 }
}
