#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct llc_sock {scalar_t__ state; } ;
struct llc_conn_state_trans {scalar_t__ next_state; } ;

/* Variables and functions */
 scalar_t__ NBR_CONN_STATES ; 
 scalar_t__ NO_STATE_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct sock*,struct llc_conn_state_trans*,struct sk_buff*) ; 
 struct llc_conn_state_trans* FUNC2 (struct sock*,struct sk_buff*) ; 
 struct llc_sock* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 

__attribute__((used)) static int FUNC5(struct sock *sk, struct sk_buff *skb)
{
	int rc = 1;
	struct llc_sock *llc = FUNC3(sk);
	struct llc_conn_state_trans *trans;

	if (llc->state > NBR_CONN_STATES)
		goto out;
	rc = 0;
	trans = FUNC2(sk, skb);
	if (trans) {
		rc = FUNC1(sk, trans, skb);
		if (!rc && trans->next_state != NO_STATE_CHANGE) {
			llc->state = trans->next_state;
			if (!FUNC0(llc->state))
				sk->sk_state_change(sk);
		}
	}
out:
	return rc;
}