#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfrm_policy {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct sadb_msg {int sadb_msg_seq; int /*<<< orphan*/  sadb_msg_pid; scalar_t__ sadb_msg_errno; int /*<<< orphan*/  sadb_msg_satype; int /*<<< orphan*/  sadb_msg_type; int /*<<< orphan*/  sadb_msg_version; } ;
struct TYPE_2__ {struct sk_buff* skb; int /*<<< orphan*/  msg_pid; int /*<<< orphan*/  msg_version; } ;
struct pfkey_sock {TYPE_1__ dump; int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BROADCAST_ONE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SADB_SATYPE_UNSPEC ; 
 int /*<<< orphan*/  SADB_X_SPDDUMP ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,struct xfrm_policy*,int) ; 
 struct sk_buff* FUNC5 (struct xfrm_policy*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct xfrm_policy *xp, int dir, int count, void *ptr)
{
	struct pfkey_sock *pfk = ptr;
	struct sk_buff *out_skb;
	struct sadb_msg *out_hdr;
	int err;

	if (!FUNC3(&pfk->sk))
		return -ENOBUFS;

	out_skb = FUNC5(xp);
	if (FUNC0(out_skb))
		return FUNC1(out_skb);

	err = FUNC4(out_skb, xp, dir);
	if (err < 0)
		return err;

	out_hdr = (struct sadb_msg *) out_skb->data;
	out_hdr->sadb_msg_version = pfk->dump.msg_version;
	out_hdr->sadb_msg_type = SADB_X_SPDDUMP;
	out_hdr->sadb_msg_satype = SADB_SATYPE_UNSPEC;
	out_hdr->sadb_msg_errno = 0;
	out_hdr->sadb_msg_seq = count + 1;
	out_hdr->sadb_msg_pid = pfk->dump.msg_pid;

	if (pfk->dump.skb)
		FUNC2(pfk->dump.skb, GFP_ATOMIC, BROADCAST_ONE,
				&pfk->sk, FUNC6(&pfk->sk));
	pfk->dump.skb = out_skb;

	return 0;
}