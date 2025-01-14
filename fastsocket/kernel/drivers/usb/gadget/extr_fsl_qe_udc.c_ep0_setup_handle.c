
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qe_udc {scalar_t__ ep0_state; int local_setup_buff; struct qe_ep* eps; } ;
struct qe_frame {int data; } ;
struct qe_ep {int data01; struct qe_frame* rxframe; } ;


 int EINVAL ;
 int PID_SETUP ;
 scalar_t__ WAIT_FOR_SETUP ;
 int frame_get_info (struct qe_frame*) ;
 unsigned int frame_get_length (struct qe_frame*) ;
 int memcpy (int *,int ,unsigned int) ;
 int setup_received_handle (struct qe_udc*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ep0_setup_handle(struct qe_udc *udc)
{
 struct qe_ep *ep = &udc->eps[0];
 struct qe_frame *pframe;
 unsigned int fsize;
 u8 *cp;

 pframe = ep->rxframe;
 if ((frame_get_info(pframe) & PID_SETUP)
   && (udc->ep0_state == WAIT_FOR_SETUP)) {
  fsize = frame_get_length(pframe);
  if (unlikely(fsize != 8))
   return -EINVAL;
  cp = (u8 *)&udc->local_setup_buff;
  memcpy(cp, pframe->data, fsize);
  ep->data01 = 1;


  setup_received_handle(udc, &udc->local_setup_buff);
  return 0;
 }
 return -EINVAL;
}
