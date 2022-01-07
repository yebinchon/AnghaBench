
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct qe_udc {scalar_t__ nullbuf; } ;
struct qe_frame {int dummy; } ;
struct qe_ep {struct qe_udc* udc; } ;


 int ENODEV ;
 int FRAME_OK ;
 int NO_CRC ;
 int ZLP ;
 int frame_set_data (struct qe_frame*,int *) ;
 int frame_set_info (struct qe_frame*,int) ;
 int frame_set_length (struct qe_frame*,int) ;
 int frame_set_status (struct qe_frame*,int ) ;
 int qe_ep_tx (struct qe_ep*,struct qe_frame*) ;
 int qe_frame_clean (struct qe_frame*) ;

__attribute__((used)) static int sendnulldata(struct qe_ep *ep, struct qe_frame *frame, uint infor)
{
 struct qe_udc *udc = ep->udc;

 if (frame == ((void*)0))
  return -ENODEV;

 qe_frame_clean(frame);
 frame_set_data(frame, (u8 *)udc->nullbuf);
 frame_set_length(frame, 2);
 frame_set_status(frame, FRAME_OK);
 frame_set_info(frame, (ZLP | NO_CRC | infor));

 return qe_ep_tx(ep, frame);
}
