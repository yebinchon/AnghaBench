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
struct TYPE_3__ {scalar_t__ state; } ;
struct xfrm_state {int /*<<< orphan*/  lock; TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_len; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_errno; } ;
struct TYPE_4__ {int /*<<< orphan*/  km_waitq; } ;
struct net {TYPE_2__ xfrm; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMMY_MARK ; 
 int EOPNOTSUPP ; 
 scalar_t__ XFRM_STATE_ACQ ; 
 scalar_t__ XFRM_STATE_ERROR ; 
 struct net* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xfrm_state* FUNC4 (struct net*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
	struct net *net = FUNC0(sk);
	struct xfrm_state *x;

	if (hdr->sadb_msg_len != sizeof(struct sadb_msg)/8)
		return -EOPNOTSUPP;

	if (hdr->sadb_msg_seq == 0 || hdr->sadb_msg_errno == 0)
		return 0;

	x = FUNC4(net, DUMMY_MARK, hdr->sadb_msg_seq);
	if (x == NULL)
		return 0;

	FUNC1(&x->lock);
	if (x->km.state == XFRM_STATE_ACQ) {
		x->km.state = XFRM_STATE_ERROR;
		FUNC3(&net->xfrm.km_waitq);
	}
	FUNC2(&x->lock);
	FUNC5(x);
	return 0;
}