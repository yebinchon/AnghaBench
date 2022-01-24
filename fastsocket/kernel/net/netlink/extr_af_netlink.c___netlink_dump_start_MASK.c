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
struct sock {int /*<<< orphan*/  sk_protocol; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;
struct nlmsghdr {int dummy; } ;
struct netlink_sock {int /*<<< orphan*/  cb_mutex; struct netlink_callback* cb; } ;
struct netlink_dump_control {int /*<<< orphan*/  min_dump_alloc; int /*<<< orphan*/  module; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
struct netlink_callback_extended {int /*<<< orphan*/  module; int /*<<< orphan*/  min_dump_alloc; } ;
struct netlink_callback {struct sk_buff* skb; struct nlmsghdr const* nlh; int /*<<< orphan*/  done; int /*<<< orphan*/  dump; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EBUSY ; 
 int ECONNREFUSED ; 
 int EINTR ; 
 int ENOBUFS ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETLINK_CALLBACK_TOTAL_SIZE ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netlink_callback* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct netlink_callback*) ; 
 int FUNC6 (struct sock*) ; 
 struct sock* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netlink_callback_extended* FUNC8 (struct netlink_callback*) ; 
 struct netlink_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct sock *ssk, struct sk_buff *skb,
		       const struct nlmsghdr *nlh,
		       struct netlink_dump_control *control)
{
	struct netlink_callback *cb;
	struct netlink_callback_extended *cb_ext;
	struct sock *sk;
	struct netlink_sock *nlk;
	int ret;

	cb = FUNC2(NETLINK_CALLBACK_TOTAL_SIZE, GFP_KERNEL);
	if (cb == NULL)
		return -ENOBUFS;

	cb_ext = FUNC8(cb);
	cb->dump = control->dump;
	cb->done = control->done;
	cb->nlh = nlh;
	cb_ext->module = control->module;
	cb_ext->min_dump_alloc = control->min_dump_alloc;
	FUNC1(&skb->users);
	cb->skb = skb;

	sk = FUNC7(FUNC10(ssk), ssk->sk_protocol, FUNC0(skb).pid);
	if (sk == NULL) {
		FUNC5(cb);
		return -ECONNREFUSED;
	}
	nlk = FUNC9(sk);

	FUNC3(nlk->cb_mutex);
	/* A dump is in progress... */
	if (nlk->cb) {
		FUNC4(nlk->cb_mutex);
		FUNC5(cb);
		ret = -EBUSY;
		goto out;
	}
	/* add reference of module which cb->dump belongs to */
	if (!FUNC12(cb_ext->module)) {
		FUNC4(nlk->cb_mutex);
		FUNC5(cb);
		ret = -EPROTONOSUPPORT;
		goto out;
	}

	nlk->cb = cb;
	FUNC4(nlk->cb_mutex);

	ret = FUNC6(sk);
out:
	FUNC11(sk);

	if (ret)
		return ret;

	/* We successfully started a dump, by returning -EINTR we
	 * signal not to send ACK even if it was requested.
	 */
	return -EINTR;
}