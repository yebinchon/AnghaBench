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
struct TYPE_2__ {int /*<<< orphan*/  state; } ;
struct xfrm_state {TYPE_1__ km; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {scalar_t__ sadb_msg_type; int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; int /*<<< orphan*/  event; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfrm_state*) ; 
 int FUNC1 (struct xfrm_state*) ; 
 scalar_t__ SADB_ADD ; 
 int /*<<< orphan*/  XFRM_MSG_NEWSA ; 
 int /*<<< orphan*/  XFRM_MSG_UPDSA ; 
 int /*<<< orphan*/  XFRM_STATE_DEAD ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_state* FUNC6 (struct net*,struct sadb_msg*,void**) ; 
 struct net* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfrm_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfrm_state*) ; 
 int FUNC12 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC13(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
	struct net *net = FUNC7(sk);
	struct xfrm_state *x;
	int err;
	struct km_event c;

	x = FUNC6(net, hdr, ext_hdrs);
	if (FUNC0(x))
		return FUNC1(x);

	FUNC10(x);
	if (hdr->sadb_msg_type == SADB_ADD)
		err = FUNC9(x);
	else
		err = FUNC12(x);

	FUNC8(x, err ? 0 : 1,
			     FUNC3(current),
			     FUNC4(current), 0);

	if (err < 0) {
		x->km.state = XFRM_STATE_DEAD;
		FUNC2(x);
		goto out;
	}

	if (hdr->sadb_msg_type == SADB_ADD)
		c.event = XFRM_MSG_NEWSA;
	else
		c.event = XFRM_MSG_UPDSA;
	c.seq = hdr->sadb_msg_seq;
	c.pid = hdr->sadb_msg_pid;
	FUNC5(x, &c);
out:
	FUNC11(x);
	return err;
}