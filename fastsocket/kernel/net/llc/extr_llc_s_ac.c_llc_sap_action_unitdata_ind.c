
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap {int dummy; } ;


 int llc_sap_rtn_pdu (struct llc_sap*,struct sk_buff*) ;

int llc_sap_action_unitdata_ind(struct llc_sap *sap, struct sk_buff *skb)
{
 llc_sap_rtn_pdu(sap, skb);
 return 0;
}
