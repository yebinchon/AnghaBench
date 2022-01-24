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
typedef  scalar_t__ u32 ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int /*<<< orphan*/  nlmsg_seq; int /*<<< orphan*/  nlmsg_type; } ;
struct inet_timewait_sock {int dummy; } ;
struct inet_hashinfo {int dummy; } ;
struct TYPE_3__ {scalar_t__* idiag_cookie; int /*<<< orphan*/  idiag_if; int /*<<< orphan*/  idiag_sport; int /*<<< orphan*/ * idiag_src; int /*<<< orphan*/  idiag_dport; int /*<<< orphan*/ * idiag_dst; } ;
struct inet_diag_req {scalar_t__ idiag_family; int /*<<< orphan*/  idiag_ext; TYPE_1__ id; } ;
struct inet_diag_msg {int dummy; } ;
struct inet_diag_meminfo {int dummy; } ;
struct inet_diag_handler {scalar_t__ idiag_info_size; struct inet_hashinfo* idiag_hashinfo; } ;
struct in6_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INET_DIAG_NOCOOKIE ; 
 scalar_t__ FUNC0 (struct inet_diag_handler const*) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_2__ FUNC1 (struct sk_buff*) ; 
 struct inet_diag_req* FUNC2 (struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct inet_diag_handler const*) ; 
 scalar_t__ TCP_TIME_WAIT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idiagnl ; 
 struct sock* FUNC7 (int /*<<< orphan*/ *,struct inet_hashinfo*,struct in6_addr*,int /*<<< orphan*/ ,struct in6_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_diag_handler* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inet_diag_handler const*) ; 
 struct sock* FUNC10 (int /*<<< orphan*/ *,struct inet_hashinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inet_timewait_sock*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlmsghdr const*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *in_skb,
			       const struct nlmsghdr *nlh)
{
	int err;
	struct sock *sk;
	struct inet_diag_req *req = FUNC2(nlh);
	struct sk_buff *rep;
	struct inet_hashinfo *hashinfo;
	const struct inet_diag_handler *handler;

	handler = FUNC8(nlh->nlmsg_type);
	if (FUNC0(handler)) {
		err = FUNC4(handler);
		goto unlock;
	}

	hashinfo = handler->idiag_hashinfo;
	err = -EINVAL;

	if (req->idiag_family == AF_INET) {
		sk = FUNC10(&init_net, hashinfo, req->id.idiag_dst[0],
				 req->id.idiag_dport, req->id.idiag_src[0],
				 req->id.idiag_sport, req->id.idiag_if);
	}
#if defined(CONFIG_IPV6) || defined (CONFIG_IPV6_MODULE)
	else if (req->idiag_family == AF_INET6) {
		sk = inet6_lookup(&init_net, hashinfo,
				  (struct in6_addr *)req->id.idiag_dst,
				  req->id.idiag_dport,
				  (struct in6_addr *)req->id.idiag_src,
				  req->id.idiag_sport,
				  req->id.idiag_if);
	}
#endif
	else {
		goto unlock;
	}

	err = -ENOENT;
	if (sk == NULL)
		goto unlock;

	err = -ESTALE;
	if ((req->id.idiag_cookie[0] != INET_DIAG_NOCOOKIE ||
	     req->id.idiag_cookie[1] != INET_DIAG_NOCOOKIE) &&
	    ((u32)(unsigned long)sk != req->id.idiag_cookie[0] ||
	     (u32)((((unsigned long)sk) >> 31) >> 1) != req->id.idiag_cookie[1]))
		goto out;

	err = -ENOMEM;
	rep = FUNC6(FUNC3((sizeof(struct inet_diag_msg) +
				     sizeof(struct inet_diag_meminfo) +
				     handler->idiag_info_size + 64)),
			GFP_KERNEL);
	if (!rep)
		goto out;

	err = FUNC14(sk, rep, req->idiag_ext,
			   FUNC1(in_skb).pid,
			   nlh->nlmsg_seq, 0, nlh);
	if (err < 0) {
		FUNC5(err == -EMSGSIZE);
		FUNC12(rep);
		goto out;
	}
	err = FUNC13(idiagnl, rep, FUNC1(in_skb).pid,
			      MSG_DONTWAIT);
	if (err > 0)
		err = 0;

out:
	if (sk) {
		if (sk->sk_state == TCP_TIME_WAIT)
			FUNC11((struct inet_timewait_sock *)sk);
		else
			FUNC15(sk);
	}
unlock:
	FUNC9(handler);
	return err;
}