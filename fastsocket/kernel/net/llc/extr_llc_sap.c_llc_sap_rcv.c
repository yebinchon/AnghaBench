
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {struct sock* sk; } ;
struct llc_sap_state_ev {scalar_t__ reason; int type; } ;
struct llc_sap {int dummy; } ;


 int LLC_SAP_EV_TYPE_PDU ;
 struct llc_sap_state_ev* llc_sap_ev (struct sk_buff*) ;
 int llc_sap_state_process (struct llc_sap*,struct sk_buff*) ;

__attribute__((used)) static void llc_sap_rcv(struct llc_sap *sap, struct sk_buff *skb,
   struct sock *sk)
{
 struct llc_sap_state_ev *ev = llc_sap_ev(skb);

 ev->type = LLC_SAP_EV_TYPE_PDU;
 ev->reason = 0;
 skb->sk = sk;
 llc_sap_state_process(sap, skb);
}
