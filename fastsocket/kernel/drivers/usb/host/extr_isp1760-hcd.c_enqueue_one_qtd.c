
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {int regs; } ;
struct isp1760_qtd {int packet_type; scalar_t__ length; int data_buffer; } ;
struct isp1760_hcd {int dummy; } ;


 scalar_t__ HC_ATL_PL_SIZE ;



 struct usb_hcd* priv_to_hcd (struct isp1760_hcd*) ;
 int priv_write_copy (struct isp1760_hcd*,int ,int,scalar_t__) ;

__attribute__((used)) static void enqueue_one_qtd(struct isp1760_qtd *qtd, struct isp1760_hcd *priv,
  u32 payload)
{
 u32 token;
 struct usb_hcd *hcd = priv_to_hcd(priv);

 token = qtd->packet_type;

 if (qtd->length && (qtd->length <= HC_ATL_PL_SIZE)) {
  switch (token) {
  case 130:
   break;
  case 129:
  case 128:
   priv_write_copy(priv, qtd->data_buffer,
     hcd->regs + payload,
     qtd->length);
  }
 }
}
