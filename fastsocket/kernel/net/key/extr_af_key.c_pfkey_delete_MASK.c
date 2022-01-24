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
struct xfrm_state {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int /*<<< orphan*/  sadb_msg_pid; int /*<<< orphan*/  sadb_msg_seq; } ;
struct net {int dummy; } ;
struct km_event {int /*<<< orphan*/  event; int /*<<< orphan*/  pid; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int SADB_EXT_ADDRESS_DST ; 
 int SADB_EXT_ADDRESS_SRC ; 
 int SADB_EXT_SA ; 
 int /*<<< orphan*/  XFRM_MSG_DELSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct xfrm_state*,struct km_event*) ; 
 struct xfrm_state* FUNC3 (struct net*,struct sadb_msg*,void**) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int FUNC5 (struct xfrm_state*) ; 
 struct net* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfrm_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct xfrm_state*) ; 
 scalar_t__ FUNC9 (struct xfrm_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfrm_state*) ; 

__attribute__((used)) static int FUNC11(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
	struct net *net = FUNC6(sk);
	struct xfrm_state *x;
	struct km_event c;
	int err;

	if (!ext_hdrs[SADB_EXT_SA-1] ||
	    !FUNC4(ext_hdrs[SADB_EXT_ADDRESS_SRC-1],
				     ext_hdrs[SADB_EXT_ADDRESS_DST-1]))
		return -EINVAL;

	x = FUNC3(net, hdr, ext_hdrs);
	if (x == NULL)
		return -ESRCH;

	if ((err = FUNC5(x)))
		goto out;

	if (FUNC9(x)) {
		err = -EPERM;
		goto out;
	}

	err = FUNC8(x);

	if (err < 0)
		goto out;

	c.seq = hdr->sadb_msg_seq;
	c.pid = hdr->sadb_msg_pid;
	c.event = XFRM_MSG_DELSA;
	FUNC2(x, &c);
out:
	FUNC7(x, err ? 0 : 1,
				FUNC0(current),
				FUNC1(current), 0);
	FUNC10(x);

	return err;
}