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
struct sock {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct dn_skb_cb {unsigned short segnum; } ;
struct dn_scp {scalar_t__ other_report; int /*<<< orphan*/  numoth_rcv; int /*<<< orphan*/  other_receive_queue; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 struct dn_scp* FUNC0 (struct sock*) ; 
 struct dn_skb_cb* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SIGURG ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 scalar_t__ FUNC3 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC9(struct sock *sk, struct sk_buff *skb)
{
	struct dn_scp *scp = FUNC0(sk);
	unsigned short segnum;
	struct dn_skb_cb *cb = FUNC1(skb);
	int queued = 0;

	if (skb->len < 2)
		goto out;

	cb->segnum = segnum = FUNC5(*(__le16 *)skb->data);
	FUNC8(skb, 2);

	if (FUNC7(scp->numoth_rcv, segnum)) {

		if (FUNC3(sk, skb, SIGURG, &scp->other_receive_queue) == 0) {
			FUNC6(&scp->numoth_rcv, 1);
			scp->other_report = 0;
			queued = 1;
		}
	}

	FUNC2(sk);
out:
	if (!queued)
		FUNC4(skb);
}