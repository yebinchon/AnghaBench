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
typedef  void* u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; int /*<<< orphan*/  nlmsg_flags; int /*<<< orphan*/  nlmsg_type; } ;
struct inet_timewait_sock {scalar_t__ tw_state; long tw_ttd; scalar_t__ tw_family; int /*<<< orphan*/  tw_substate; int /*<<< orphan*/  tw_daddr; int /*<<< orphan*/  tw_rcv_saddr; int /*<<< orphan*/  tw_dport; int /*<<< orphan*/  tw_sport; int /*<<< orphan*/  tw_bound_dev_if; } ;
struct TYPE_2__ {int /*<<< orphan*/ * idiag_dst; int /*<<< orphan*/ * idiag_src; int /*<<< orphan*/  idiag_dport; int /*<<< orphan*/  idiag_sport; void** idiag_cookie; int /*<<< orphan*/  idiag_if; } ;
struct inet_diag_msg {scalar_t__ idiag_family; int idiag_timer; TYPE_1__ id; scalar_t__ idiag_inode; scalar_t__ idiag_uid; scalar_t__ idiag_wqueue; scalar_t__ idiag_rqueue; int /*<<< orphan*/  idiag_expires; int /*<<< orphan*/  idiag_state; scalar_t__ idiag_retrans; } ;
struct inet6_timewait_sock {int /*<<< orphan*/  tw_v6_daddr; int /*<<< orphan*/  tw_v6_rcv_saddr; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,int /*<<< orphan*/ ) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  HZ ; 
 struct inet_diag_msg* FUNC2 (struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC3 (struct sk_buff*,void*,void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ TCP_TIME_WAIT ; 
 struct inet6_timewait_sock* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 long jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char const*) ; 
 unsigned char const* FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct inet_timewait_sock *tw,
			       struct sk_buff *skb, int ext, u32 pid,
			       u32 seq, u16 nlmsg_flags,
			       const struct nlmsghdr *unlh)
{
	long tmo;
	struct inet_diag_msg *r;
	const unsigned char *previous_tail = FUNC7(skb);
	struct nlmsghdr *nlh = FUNC3(skb, pid, seq,
					 unlh->nlmsg_type, sizeof(*r));

	r = FUNC2(nlh);
	FUNC0(tw->tw_state != TCP_TIME_WAIT);

	nlh->nlmsg_flags = nlmsg_flags;

	tmo = tw->tw_ttd - jiffies;
	if (tmo < 0)
		tmo = 0;

	r->idiag_family	      = tw->tw_family;
	r->idiag_retrans      = 0;
	r->id.idiag_if	      = tw->tw_bound_dev_if;
	r->id.idiag_cookie[0] = (u32)(unsigned long)tw;
	r->id.idiag_cookie[1] = (u32)(((unsigned long)tw >> 31) >> 1);
	r->id.idiag_sport     = tw->tw_sport;
	r->id.idiag_dport     = tw->tw_dport;
	r->id.idiag_src[0]    = tw->tw_rcv_saddr;
	r->id.idiag_dst[0]    = tw->tw_daddr;
	r->idiag_state	      = tw->tw_substate;
	r->idiag_timer	      = 3;
	r->idiag_expires      = FUNC1(tmo * 1000, HZ);
	r->idiag_rqueue	      = 0;
	r->idiag_wqueue	      = 0;
	r->idiag_uid	      = 0;
	r->idiag_inode	      = 0;
#if defined(CONFIG_IPV6) || defined (CONFIG_IPV6_MODULE)
	if (tw->tw_family == AF_INET6) {
		const struct inet6_timewait_sock *tw6 =
						inet6_twsk((struct sock *)tw);

		ipv6_addr_copy((struct in6_addr *)r->id.idiag_src,
			       &tw6->tw_v6_rcv_saddr);
		ipv6_addr_copy((struct in6_addr *)r->id.idiag_dst,
			       &tw6->tw_v6_daddr);
	}
#endif
	nlh->nlmsg_len = FUNC7(skb) - previous_tail;
	return skb->len;
nlmsg_failure:
	FUNC6(skb, previous_tail);
	return -EMSGSIZE;
}