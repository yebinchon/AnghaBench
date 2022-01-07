
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap_state_trans {int next_state; } ;
struct llc_sap {int state; } ;


 int LLC_NR_SAP_STATES ;
 int llc_exec_sap_trans_actions (struct llc_sap*,struct llc_sap_state_trans*,struct sk_buff*) ;
 struct llc_sap_state_trans* llc_find_sap_trans (struct llc_sap*,struct sk_buff*) ;

__attribute__((used)) static int llc_sap_next_state(struct llc_sap *sap, struct sk_buff *skb)
{
 int rc = 1;
 struct llc_sap_state_trans *trans;

 if (sap->state > LLC_NR_SAP_STATES)
  goto out;
 trans = llc_find_sap_trans(sap, skb);
 if (!trans)
  goto out;





 rc = llc_exec_sap_trans_actions(sap, trans, skb);
 if (rc)
  goto out;



 sap->state = trans->next_state;
out:
 return rc;
}
