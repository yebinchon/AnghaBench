
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int ccid3hctx_state; } ;
typedef enum ccid3_hc_tx_states { ____Placeholder_ccid3_hc_tx_states } ccid3_hc_tx_states ;


 int WARN_ON (int) ;
 struct ccid3_hc_tx_sock* ccid3_hc_tx_sk (struct sock*) ;
 int ccid3_pr_debug (char*,int ,struct sock*,int ,int ) ;
 int ccid3_tx_state_name (int) ;
 int dccp_role (struct sock*) ;

__attribute__((used)) static void ccid3_hc_tx_set_state(struct sock *sk,
      enum ccid3_hc_tx_states state)
{
 struct ccid3_hc_tx_sock *hctx = ccid3_hc_tx_sk(sk);
 enum ccid3_hc_tx_states oldstate = hctx->ccid3hctx_state;

 ccid3_pr_debug("%s(%p) %-8.8s -> %s\n",
         dccp_role(sk), sk, ccid3_tx_state_name(oldstate),
         ccid3_tx_state_name(state));
 WARN_ON(state == oldstate);
 hctx->ccid3hctx_state = state;
}
