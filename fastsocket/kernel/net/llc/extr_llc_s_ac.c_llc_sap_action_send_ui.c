
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int mac; int lsap; } ;
struct TYPE_3__ {int mac; int lsap; } ;
struct llc_sap_state_ev {TYPE_2__ daddr; TYPE_1__ saddr; } ;
struct llc_sap {int dummy; } ;


 int LLC_PDU_CMD ;
 int LLC_PDU_TYPE_U ;
 int dev_queue_xmit (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int llc_mac_hdr_init (struct sk_buff*,int ,int ) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,int ,int ) ;
 int llc_pdu_init_as_ui_cmd (struct sk_buff*) ;
 struct llc_sap_state_ev* llc_sap_ev (struct sk_buff*) ;

int llc_sap_action_send_ui(struct llc_sap *sap, struct sk_buff *skb)
{
 struct llc_sap_state_ev *ev = llc_sap_ev(skb);
 int rc;

 llc_pdu_header_init(skb, LLC_PDU_TYPE_U, ev->saddr.lsap,
       ev->daddr.lsap, LLC_PDU_CMD);
 llc_pdu_init_as_ui_cmd(skb);
 rc = llc_mac_hdr_init(skb, ev->saddr.mac, ev->daddr.mac);
 if (likely(!rc))
  rc = dev_queue_xmit(skb);
 return rc;
}
