#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sock {int /*<<< orphan*/  (* sk_error_report ) (struct sock*) ;int /*<<< orphan*/  sk_err; } ;
struct sk_buff {TYPE_1__* sk; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_seq; } ;
struct nlmsgerr {int error; int /*<<< orphan*/  msg; } ;
struct TYPE_5__ {int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 TYPE_3__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NLMSG_ERROR ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nlmsghdr*,int) ; 
 struct sock* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlmsgerr* FUNC5 (struct nlmsghdr*) ; 
 scalar_t__ FUNC6 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 

void FUNC11(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err)
{
	struct sk_buff *skb;
	struct nlmsghdr *rep;
	struct nlmsgerr *errmsg;
	size_t payload = sizeof(*errmsg);

	/* error messages get the original request appened */
	if (err)
		payload += FUNC6(nlh);

	skb = FUNC7(payload, GFP_KERNEL);
	if (!skb) {
		struct sock *sk;

		sk = FUNC3(FUNC8(in_skb->sk),
				    in_skb->sk->sk_protocol,
				    FUNC0(in_skb).pid);
		if (sk) {
			sk->sk_err = ENOBUFS;
			sk->sk_error_report(sk);
			FUNC9(sk);
		}
		return;
	}

	rep = FUNC1(skb, FUNC0(in_skb).pid, nlh->nlmsg_seq,
			  NLMSG_ERROR, payload, 0);
	errmsg = FUNC5(rep);
	errmsg->error = err;
	FUNC2(&errmsg->msg, nlh, err ? nlh->nlmsg_len : sizeof(*nlh));
	FUNC4(in_skb->sk, skb, FUNC0(in_skb).pid, MSG_DONTWAIT);
}