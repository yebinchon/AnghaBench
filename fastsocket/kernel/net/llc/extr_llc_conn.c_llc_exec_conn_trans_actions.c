
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct llc_conn_state_trans {int (* ev_actions ) (struct sock*,struct sk_buff*) ;} ;
typedef int (* llc_conn_action_t ) (struct sock*,struct sk_buff*) ;


 int stub1 (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int llc_exec_conn_trans_actions(struct sock *sk,
           struct llc_conn_state_trans *trans,
           struct sk_buff *skb)
{
 int rc = 0;
 llc_conn_action_t *next_action;

 for (next_action = trans->ev_actions;
      next_action && *next_action; next_action++) {
  int rc2 = (*next_action)(sk, skb);

  if (rc2 == 2) {
   rc = rc2;
   break;
  } else if (rc2)
   rc = 1;
 }
 return rc;
}
