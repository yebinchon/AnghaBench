
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int pipe; struct c67x00_urb_priv* hcpriv; } ;
struct c67x00_urb_priv {TYPE_2__* ep_data; } ;
struct c67x00_hcd {scalar_t__ bandwidth_allocated; scalar_t__ max_frame_bw; scalar_t__ next_td_addr; scalar_t__ td_base_addr; scalar_t__ next_buf_addr; scalar_t__ buf_base_addr; scalar_t__ periodic_bw_allocated; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ speed; } ;


 scalar_t__ CY_TD_SIZE ;
 int EMSGSIZE ;
 scalar_t__ MAX_PERIODIC_BW (scalar_t__) ;
 scalar_t__ SIE_TD_BUF_SIZE ;
 scalar_t__ SIE_TD_SIZE ;
 scalar_t__ USB_SPEED_LOW ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usb_pipein (int ) ;
 scalar_t__ usb_pipeisoc (int ) ;

__attribute__((used)) static int c67x00_claim_frame_bw(struct c67x00_hcd *c67x00, struct urb *urb,
     int len, int periodic)
{
 struct c67x00_urb_priv *urbp = urb->hcpriv;
 int bit_time;
 if (urbp->ep_data->dev->speed == USB_SPEED_LOW) {

  if (usb_pipein(urb->pipe))
   bit_time = 80240 + 7578*len;
  else
   bit_time = 80260 + 7467*len;
 } else {

  if (usb_pipeisoc(urb->pipe))
   bit_time = usb_pipein(urb->pipe) ? 9050 : 7840;
  else
   bit_time = 11250;
  bit_time += 936*len;
 }



 bit_time = ((bit_time+50) / 100) + 106;

 if (unlikely(bit_time + c67x00->bandwidth_allocated >=
       c67x00->max_frame_bw))
  return -EMSGSIZE;

 if (unlikely(c67x00->next_td_addr + CY_TD_SIZE >=
       c67x00->td_base_addr + SIE_TD_SIZE))
  return -EMSGSIZE;

 if (unlikely(c67x00->next_buf_addr + len >=
       c67x00->buf_base_addr + SIE_TD_BUF_SIZE))
  return -EMSGSIZE;

 if (periodic) {
  if (unlikely(bit_time + c67x00->periodic_bw_allocated >=
        MAX_PERIODIC_BW(c67x00->max_frame_bw)))
   return -EMSGSIZE;
  c67x00->periodic_bw_allocated += bit_time;
 }

 c67x00->bandwidth_allocated += bit_time;
 return 0;
}
