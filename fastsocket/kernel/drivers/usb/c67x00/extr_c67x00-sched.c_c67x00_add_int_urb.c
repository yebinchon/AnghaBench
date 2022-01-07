
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int interval; struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {TYPE_1__* ep_data; } ;
struct c67x00_hcd {int current_frame; } ;
struct TYPE_2__ {int next_frame; } ;


 int c67x00_add_data_urb (struct c67x00_hcd*,struct urb*) ;
 int frame_add (int ,int ) ;
 scalar_t__ frame_after_eq (int ,int ) ;

__attribute__((used)) static int c67x00_add_int_urb(struct c67x00_hcd *c67x00, struct urb *urb)
{
 struct c67x00_urb_priv *urbp = urb->hcpriv;

 if (frame_after_eq(c67x00->current_frame, urbp->ep_data->next_frame)) {
  urbp->ep_data->next_frame =
      frame_add(urbp->ep_data->next_frame, urb->interval);
  return c67x00_add_data_urb(c67x00, urb);
 }
 return 0;
}
