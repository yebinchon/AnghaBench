
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap_state_trans {int (* ev ) (struct llc_sap*,struct sk_buff*) ;} ;
struct llc_sap_state {struct llc_sap_state_trans** transitions; } ;
struct llc_sap {int state; } ;


 struct llc_sap_state* llc_sap_state_table ;
 int stub1 (struct llc_sap*,struct sk_buff*) ;

__attribute__((used)) static struct llc_sap_state_trans *llc_find_sap_trans(struct llc_sap *sap,
            struct sk_buff* skb)
{
 int i = 0;
 struct llc_sap_state_trans *rc = ((void*)0);
 struct llc_sap_state_trans **next_trans;
 struct llc_sap_state *curr_state = &llc_sap_state_table[sap->state - 1];




 for (next_trans = curr_state->transitions; next_trans[i]->ev; i++)
  if (!next_trans[i]->ev(sap, skb)) {
   rc = next_trans[i];
   break;
  }
 return rc;
}
