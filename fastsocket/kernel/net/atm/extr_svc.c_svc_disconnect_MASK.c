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
struct sock {int /*<<< orphan*/  sk_receive_queue; int /*<<< orphan*/  sk_sleep; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  as_close ; 
 int /*<<< orphan*/  as_reject ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ sigd ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct atm_vcc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sock* FUNC10 (struct atm_vcc*) ; 
 struct sk_buff* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC13(struct atm_vcc *vcc)
{
	FUNC0(wait);
	struct sk_buff *skb;
	struct sock *sk = FUNC10(vcc);

	FUNC5("svc_disconnect %p\n",vcc);
	if (FUNC12(ATM_VF_REGIS,&vcc->flags)) {
		FUNC6(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
		FUNC8(vcc,as_close,NULL,NULL,NULL);
		while (!FUNC12(ATM_VF_RELEASED,&vcc->flags) && sigd) {
			FUNC7();
			FUNC6(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
		}
		FUNC4(sk->sk_sleep, &wait);
	}
	/* beware - socket is still in use by atmsigd until the last
	   as_indicate has been answered */
	while ((skb = FUNC11(&sk->sk_receive_queue)) != NULL) {
		FUNC1(vcc, skb->truesize);
		FUNC5("LISTEN REL\n");
		FUNC9(NULL,as_reject,vcc,NULL,NULL,&vcc->qos,0);
		FUNC3(skb);
	}
	FUNC2(ATM_VF_REGIS, &vcc->flags);
	/* ... may retry later */
}