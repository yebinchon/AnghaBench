
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct urb {int pipe; TYPE_3__* dev; } ;
struct ptd {void* dw3; void* dw2; void* dw1; void* dw0; } ;
struct isp1760_qtd {int packet_type; int toggle; int length; } ;
struct isp1760_qh {int ping; int toggle; } ;
struct isp1760_hcd {int dummy; } ;
struct TYPE_6__ {scalar_t__ speed; TYPE_2__* tt; int ttport; } ;
struct TYPE_5__ {TYPE_1__* hub; } ;
struct TYPE_4__ {int devnum; } ;


 int ERR_COUNTER ;
 int NAK_COUNTER ;
 int PTD_ACTIVE ;
 int PTD_CERR (int ) ;
 int PTD_DATA_START_ADDR (int ) ;
 int PTD_DATA_TOGGLE (int ) ;
 int PTD_DEVICE_ADDR (int ) ;
 int PTD_ENDPOINT (int) ;
 int PTD_HUB_NUM (int ) ;
 int PTD_LENGTH (int ) ;
 int PTD_MAXPACKET (int) ;
 int PTD_MULTI (int) ;
 int PTD_NAC_CNT (int) ;
 int PTD_PID_TOKEN (int) ;
 int PTD_PORT_NUM (int ) ;
 int PTD_RL_CNT (int) ;
 int PTD_SE_USB_LOSPEED ;
 int PTD_TRANS_BULK ;
 int PTD_TRANS_INT ;
 int PTD_TRANS_SPLIT ;
 int PTD_VALID ;
 int RL_COUNTER ;
 scalar_t__ USB_SPEED_HIGH ;
 scalar_t__ USB_SPEED_LOW ;
 int base_to_chip (int) ;
 void* cpu_to_le32 (int) ;
 int memset (struct ptd*,int ,int) ;
 int usb_maxpacket (TYPE_3__*,int ,int ) ;
 scalar_t__ usb_pipebulk (int ) ;
 scalar_t__ usb_pipecontrol (int ) ;
 int usb_pipedevice (int ) ;
 int usb_pipeendpoint (int ) ;
 scalar_t__ usb_pipeint (int ) ;
 int usb_pipeout (int ) ;

__attribute__((used)) static void transform_into_atl(struct isp1760_hcd *priv, struct isp1760_qh *qh,
   struct isp1760_qtd *qtd, struct urb *urb,
   u32 payload, struct ptd *ptd)
{
 u32 dw0;
 u32 dw1;
 u32 dw2;
 u32 dw3;
 u32 maxpacket;
 u32 multi;
 u32 pid_code;
 u32 rl = RL_COUNTER;
 u32 nak = NAK_COUNTER;


 maxpacket = usb_maxpacket(urb->dev, urb->pipe, usb_pipeout(urb->pipe));
 multi = 1 + ((maxpacket >> 11) & 0x3);
 maxpacket &= 0x7ff;


 dw0 = PTD_VALID;
 dw0 |= PTD_LENGTH(qtd->length);
 dw0 |= PTD_MAXPACKET(maxpacket);
 dw0 |= PTD_ENDPOINT(usb_pipeendpoint(urb->pipe));
 dw1 = usb_pipeendpoint(urb->pipe) >> 1;


 dw1 |= PTD_DEVICE_ADDR(usb_pipedevice(urb->pipe));

 pid_code = qtd->packet_type;
 dw1 |= PTD_PID_TOKEN(pid_code);

 if (usb_pipebulk(urb->pipe))
  dw1 |= PTD_TRANS_BULK;
 else if (usb_pipeint(urb->pipe))
  dw1 |= PTD_TRANS_INT;

 if (urb->dev->speed != USB_SPEED_HIGH) {


  dw1 |= PTD_TRANS_SPLIT;
  if (urb->dev->speed == USB_SPEED_LOW)
   dw1 |= PTD_SE_USB_LOSPEED;

  dw1 |= PTD_PORT_NUM(urb->dev->ttport);
  dw1 |= PTD_HUB_NUM(urb->dev->tt->hub->devnum);


  if (usb_pipeint(urb->pipe) &&
    (urb->dev->speed == USB_SPEED_LOW))
   dw1 |= 2 << 16;

  dw3 = 0;
  rl = 0;
  nak = 0;
 } else {
  dw0 |= PTD_MULTI(multi);
  if (usb_pipecontrol(urb->pipe) || usb_pipebulk(urb->pipe))
   dw3 = qh->ping;
  else
   dw3 = 0;
 }

 dw2 = 0;
 dw2 |= PTD_DATA_START_ADDR(base_to_chip(payload));
 dw2 |= PTD_RL_CNT(rl);
 dw3 |= PTD_NAC_CNT(nak);


 if (usb_pipecontrol(urb->pipe))
  dw3 |= PTD_DATA_TOGGLE(qtd->toggle);
 else
  dw3 |= qh->toggle;


 dw3 |= PTD_ACTIVE;

 dw3 |= PTD_CERR(ERR_COUNTER);

 memset(ptd, 0, sizeof(*ptd));

 ptd->dw0 = cpu_to_le32(dw0);
 ptd->dw1 = cpu_to_le32(dw1);
 ptd->dw2 = cpu_to_le32(dw2);
 ptd->dw3 = cpu_to_le32(dw3);
}
