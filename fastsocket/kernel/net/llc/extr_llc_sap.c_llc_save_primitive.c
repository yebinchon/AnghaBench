
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sockaddr_llc {int sllc_test; int sllc_xid; int sllc_ua; int sllc_sap; int sllc_mac; int sllc_arphrd; int sllc_family; } ;
struct sock {int sk_family; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int type; } ;


 scalar_t__ LLC_DATAUNIT_PRIM ;
 scalar_t__ LLC_TEST_PRIM ;
 scalar_t__ LLC_XID_PRIM ;
 int llc_pdu_decode_sa (struct sk_buff*,int ) ;
 int llc_pdu_decode_ssap (struct sk_buff*,int *) ;
 struct sockaddr_llc* llc_ui_skb_cb (struct sk_buff*) ;
 int memset (struct sockaddr_llc*,int ,int) ;

void llc_save_primitive(struct sock *sk, struct sk_buff* skb, u8 prim)
{
 struct sockaddr_llc *addr;


 addr = llc_ui_skb_cb(skb);

 memset(addr, 0, sizeof(*addr));
 addr->sllc_family = sk->sk_family;
 addr->sllc_arphrd = skb->dev->type;
 addr->sllc_test = prim == LLC_TEST_PRIM;
 addr->sllc_xid = prim == LLC_XID_PRIM;
 addr->sllc_ua = prim == LLC_DATAUNIT_PRIM;
 llc_pdu_decode_sa(skb, addr->sllc_mac);
 llc_pdu_decode_ssap(skb, &addr->sllc_sap);
}
