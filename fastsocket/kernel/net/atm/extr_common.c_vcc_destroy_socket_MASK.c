#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct atm_vcc {TYPE_2__* dev; int /*<<< orphan*/  (* push ) (struct atm_vcc*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* close ) (struct atm_vcc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_CLOSE ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct atm_vcc*,int /*<<< orphan*/ ) ; 
 struct atm_vcc* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

__attribute__((used)) static void FUNC11(struct sock *sk)
{
	struct atm_vcc *vcc = FUNC2(sk);
	struct sk_buff *skb;

	FUNC6(ATM_VF_CLOSE, &vcc->flags);
	FUNC3(ATM_VF_READY, &vcc->flags);
	if (vcc->dev) {
		if (vcc->dev->ops->close)
			vcc->dev->ops->close(vcc);
		if (vcc->push)
			vcc->push(vcc, NULL); /* atmarpd has no push */

		while ((skb = FUNC7(&sk->sk_receive_queue)) != NULL) {
			FUNC1(vcc,skb->truesize);
			FUNC4(skb);
		}

		FUNC5(vcc->dev->ops->owner);
		FUNC0(vcc->dev);
	}

	FUNC10(sk);
}