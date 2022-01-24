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
struct sadb_msg {int sadb_msg_errno; scalar_t__ sadb_msg_seq; } ;
struct TYPE_3__ {int (* dump ) (struct pfkey_sock*) ;TYPE_2__* skb; } ;
struct pfkey_sock {TYPE_1__ dump; int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ONE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pfkey_sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct pfkey_sock*) ; 

__attribute__((used)) static int FUNC5(struct pfkey_sock *pfk)
{
	struct sadb_msg *hdr;
	int rc;

	rc = pfk->dump.dump(pfk);
	if (rc == -ENOBUFS)
		return 0;

	if (pfk->dump.skb) {
		if (!FUNC1(&pfk->sk))
			return 0;

		hdr = (struct sadb_msg *) pfk->dump.skb->data;
		hdr->sadb_msg_seq = 0;
		hdr->sadb_msg_errno = rc;
		FUNC0(pfk->dump.skb, GFP_ATOMIC, BROADCAST_ONE,
				&pfk->sk, FUNC3(&pfk->sk));
		pfk->dump.skb = NULL;
	}

	FUNC2(pfk);
	return rc;
}