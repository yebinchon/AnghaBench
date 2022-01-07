
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header {int base; } ;
struct urb {scalar_t__ context; } ;
struct stub_priv {int seqnum; } ;


 int USBIP_RET_SUBMIT ;
 int setup_base_pdu (int *,int ,int ) ;
 int usbip_pack_pdu (struct usbip_header*,struct urb*,int ,int) ;

__attribute__((used)) static void setup_ret_submit_pdu(struct usbip_header *rpdu, struct urb *urb)
{
 struct stub_priv *priv = (struct stub_priv *) urb->context;

 setup_base_pdu(&rpdu->base, USBIP_RET_SUBMIT, priv->seqnum);

 usbip_pack_pdu(rpdu, urb, USBIP_RET_SUBMIT, 1);
}
