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
struct sk_buff {int dummy; } ;
struct pnpipehdr {int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  message_id; scalar_t__ utid; } ;
struct pep_sock {int /*<<< orphan*/  pipe_handle; int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  tx_fc; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  PNS_PIPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct pep_sock* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  pipe_srv ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct pnpipehdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb)
{
	struct pep_sock *pn = FUNC2(sk);
	struct pnpipehdr *ph;

	if (FUNC3(pn->tx_fc) &&
	    !FUNC0(&pn->tx_credits, -1, 0)) {
		FUNC1(skb);
		return -ENOBUFS;
	}

	FUNC6(skb, 3);
	FUNC7(skb);
	ph = FUNC5(skb);
	ph->utid = 0;
	ph->message_id = PNS_PIPE_DATA;
	ph->pipe_handle = pn->pipe_handle;

	return FUNC4(sk, skb, &pipe_srv);
}