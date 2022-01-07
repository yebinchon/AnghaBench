
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct qe_frame {int dummy; } ;
struct TYPE_4__ {int maxpacket; } ;
struct qe_ep {int sent; unsigned int last; TYPE_3__* tx_req; TYPE_1__ ep; } ;
struct TYPE_5__ {int length; scalar_t__ buf; } ;
struct TYPE_6__ {TYPE_2__ req; } ;


 int EIO ;
 int FRAME_OK ;
 int frame_set_data (struct qe_frame*,int *) ;
 int frame_set_info (struct qe_frame*,int ) ;
 int frame_set_length (struct qe_frame*,unsigned int) ;
 int frame_set_status (struct qe_frame*,int ) ;
 unsigned int min_t (int ,int,int ) ;
 int qe_ep_tx (struct qe_ep*,struct qe_frame*) ;
 int qe_frame_clean (struct qe_frame*) ;
 int u32 ;

__attribute__((used)) static int qe_usb_senddata(struct qe_ep *ep, struct qe_frame *frame)
{
 unsigned int size;
 u8 *buf;

 qe_frame_clean(frame);
 size = min_t(u32, (ep->tx_req->req.length - ep->sent),
    ep->ep.maxpacket);
 buf = (u8 *)ep->tx_req->req.buf + ep->sent;
 if (buf && size) {
  ep->last = size;
  frame_set_data(frame, buf);
  frame_set_length(frame, size);
  frame_set_status(frame, FRAME_OK);
  frame_set_info(frame, 0);
  return qe_ep_tx(ep, frame);
 }
 return -EIO;
}
