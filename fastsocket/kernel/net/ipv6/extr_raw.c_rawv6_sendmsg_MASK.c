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
typedef  int u16 ;
struct in6_addr {int* s6_addr; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; int sin6_flowinfo; scalar_t__ sin6_scope_id; struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_bound_dev_if; int /*<<< orphan*/  sk_mark; } ;
struct rt6_info {int dummy; } ;
struct rt0_hdr {struct in6_addr* addr; } ;
struct raw6_sock {int dummy; } ;
struct msghdr {int msg_namelen; int msg_flags; int /*<<< orphan*/  msg_iov; scalar_t__ msg_controllen; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct ipv6_txoptions {int fl6_flowlabel; scalar_t__ oif; int tot_len; int opt_nflen; int opt_flen; int proto; struct in6_addr fl6_dst; scalar_t__ srcrt; struct in6_addr fl6_src; int /*<<< orphan*/  mark; } ;
struct ipv6_pinfo {int flow_label; scalar_t__ mcast_oif; int mcast_hops; int hop_limit; int tclass; struct in6_addr saddr; struct ipv6_txoptions* opt; struct in6_addr daddr; scalar_t__ sndflow; } ;
struct ip6_flowlabel {struct in6_addr dst; } ;
struct inet_sock {int num; scalar_t__ hdrincl; } ;
struct flowi {int fl6_flowlabel; scalar_t__ oif; int tot_len; int opt_nflen; int opt_flen; int proto; struct in6_addr fl6_dst; scalar_t__ srcrt; struct in6_addr fl6_src; int /*<<< orphan*/  mark; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  fl ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EAFNOSUPPORT ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 int EREMOTE ; 
 size_t INT_MAX ; 
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_FLOWINFO_MASK ; 
 int IPV6_FLOWLABEL_MASK ; 
 int MSG_CONFIRM ; 
 int MSG_MORE ; 
 int MSG_OOB ; 
 int MSG_PROBE ; 
 int SIN6_LEN_RFC2133 ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  XFRM_LOOKUP_WAIT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct dst_entry**,struct ipv6_txoptions*,struct sock*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct msghdr*,struct ipv6_txoptions*,struct ipv6_txoptions*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*) ; 
 struct ipv6_txoptions* FUNC4 (struct ipv6_txoptions*,struct ip6_flowlabel*,struct ipv6_txoptions*) ; 
 struct ip6_flowlabel* FUNC5 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ip6_flowlabel*) ; 
 struct ipv6_pinfo* FUNC7 (struct sock*) ; 
 struct inet_sock* FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int,struct ipv6_txoptions*,struct ipv6_txoptions*,struct rt6_info*,int) ; 
 int FUNC10 (struct sock*,struct dst_entry**,struct ipv6_txoptions*) ; 
 int FUNC11 (struct dst_entry*) ; 
 int FUNC12 (struct sock*,struct dst_entry**,struct ipv6_txoptions*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  ip_generic_getfrag ; 
 scalar_t__ FUNC14 (struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC15 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC16 (struct in6_addr*,struct in6_addr*) ; 
 scalar_t__ FUNC17 (struct in6_addr*) ; 
 int FUNC18 (struct in6_addr*) ; 
 struct ipv6_txoptions* FUNC19 (struct ipv6_txoptions*,struct ipv6_txoptions*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct ipv6_txoptions*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 struct raw6_sock* FUNC23 (struct sock*) ; 
 int FUNC24 (struct ipv6_txoptions*,struct msghdr*) ; 
 int FUNC25 (struct sock*,struct ipv6_txoptions*,struct raw6_sock*) ; 
 int FUNC26 (struct sock*,int /*<<< orphan*/ ,size_t,struct ipv6_txoptions*,struct rt6_info*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sock*) ; 
 int /*<<< orphan*/  FUNC28 (struct sock*,struct ipv6_txoptions*) ; 
 int /*<<< orphan*/  FUNC29 (struct sock*) ; 

__attribute__((used)) static int FUNC30(struct kiocb *iocb, struct sock *sk,
		   struct msghdr *msg, size_t len)
{
	struct ipv6_txoptions opt_space;
	struct sockaddr_in6 * sin6 = (struct sockaddr_in6 *) msg->msg_name;
	struct in6_addr *daddr, *final_p = NULL, final;
	struct inet_sock *inet = FUNC8(sk);
	struct ipv6_pinfo *np = FUNC7(sk);
	struct raw6_sock *rp = FUNC23(sk);
	struct ipv6_txoptions *opt = NULL;
	struct ip6_flowlabel *flowlabel = NULL;
	struct dst_entry *dst = NULL;
	struct flowi fl;
	int addr_len = msg->msg_namelen;
	int hlimit = -1;
	int tclass = -1;
	u16 proto;
	int err;

	/* Rough check on arithmetic overflow,
	   better check is made in ip6_append_data().
	 */
	if (len > INT_MAX)
		return -EMSGSIZE;

	/* Mirror BSD error message compatibility */
	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	/*
	 *	Get and verify the address.
	 */
	FUNC21(&fl, 0, sizeof(fl));

	fl.mark = sk->sk_mark;

	if (sin6) {
		if (addr_len < SIN6_LEN_RFC2133)
			return -EINVAL;

		if (sin6->sin6_family && sin6->sin6_family != AF_INET6)
			return(-EAFNOSUPPORT);

		/* port is the proto value [0..255] carried in nexthdr */
		proto = FUNC22(sin6->sin6_port);

		if (!proto)
			proto = inet->num;
		else if (proto != inet->num)
			return(-EINVAL);

		if (proto > 255)
			return(-EINVAL);

		daddr = &sin6->sin6_addr;
		if (np->sndflow) {
			fl.fl6_flowlabel = sin6->sin6_flowinfo&IPV6_FLOWINFO_MASK;
			if (fl.fl6_flowlabel&IPV6_FLOWLABEL_MASK) {
				flowlabel = FUNC5(sk, fl.fl6_flowlabel);
				if (flowlabel == NULL)
					return -EINVAL;
				daddr = &flowlabel->dst;
			}
		}

		/*
		 * Otherwise it will be difficult to maintain
		 * sk->sk_dst_cache.
		 */
		if (sk->sk_state == TCP_ESTABLISHED &&
		    FUNC16(daddr, &np->daddr))
			daddr = &np->daddr;

		if (addr_len >= sizeof(struct sockaddr_in6) &&
		    sin6->sin6_scope_id &&
		    FUNC18(daddr)&IPV6_ADDR_LINKLOCAL)
			fl.oif = sin6->sin6_scope_id;
	} else {
		if (sk->sk_state != TCP_ESTABLISHED)
			return -EDESTADDRREQ;

		proto = inet->num;
		daddr = &np->daddr;
		fl.fl6_flowlabel = np->flow_label;
	}

	if (fl.oif == 0)
		fl.oif = sk->sk_bound_dev_if;

	if (msg->msg_controllen) {
		opt = &opt_space;
		FUNC21(opt, 0, sizeof(struct ipv6_txoptions));
		opt->tot_len = sizeof(struct ipv6_txoptions);

		err = FUNC1(FUNC29(sk), msg, &fl, opt, &hlimit, &tclass);
		if (err < 0) {
			FUNC6(flowlabel);
			return err;
		}
		if ((fl.fl6_flowlabel&IPV6_FLOWLABEL_MASK) && !flowlabel) {
			flowlabel = FUNC5(sk, fl.fl6_flowlabel);
			if (flowlabel == NULL)
				return -EINVAL;
		}
		if (!(opt->opt_nflen|opt->opt_flen))
			opt = NULL;
	}
	if (opt == NULL)
		opt = np->opt;
	if (flowlabel)
		opt = FUNC4(&opt_space, flowlabel, opt);
	opt = FUNC19(&opt_space, opt);

	fl.proto = proto;
	err = FUNC24(&fl, msg);
	if (err)
		goto out;

	if (!FUNC14(daddr))
		FUNC15(&fl.fl6_dst, daddr);
	else
		fl.fl6_dst.s6_addr[15] = 0x1; /* :: means loopback (BSD'ism) */
	if (FUNC14(&fl.fl6_src) && !FUNC14(&np->saddr))
		FUNC15(&fl.fl6_src, &np->saddr);

	/* merge ip6_build_xmit from ip6_output */
	if (opt && opt->srcrt) {
		struct rt0_hdr *rt0 = (struct rt0_hdr *) opt->srcrt;
		FUNC15(&final, &fl.fl6_dst);
		FUNC15(&fl.fl6_dst, rt0->addr);
		final_p = &final;
	}

	if (!fl.oif && FUNC17(&fl.fl6_dst))
		fl.oif = np->mcast_oif;
	FUNC28(sk, &fl);

	err = FUNC12(sk, &dst, &fl);
	if (err)
		goto out;
	if (final_p)
		FUNC15(&fl.fl6_dst, final_p);

	err = FUNC0(FUNC29(sk), &dst, &fl, sk, XFRM_LOOKUP_WAIT);
	if (err < 0) {
		if (err == -EREMOTE)
			err = FUNC10(sk, &dst, &fl);
		if (err < 0)
			goto out;
	}

	if (hlimit < 0) {
		if (FUNC17(&fl.fl6_dst))
			hlimit = np->mcast_hops;
		else
			hlimit = np->hop_limit;
		if (hlimit < 0)
			hlimit = FUNC11(dst);
	}

	if (tclass < 0)
		tclass = np->tclass;

	if (msg->msg_flags&MSG_CONFIRM)
		goto do_confirm;

back_from_confirm:
	if (inet->hdrincl) {
		err = FUNC26(sk, msg->msg_iov, len, &fl, (struct rt6_info*)dst, msg->msg_flags);
	} else {
		FUNC20(sk);
		err = FUNC9(sk, ip_generic_getfrag, msg->msg_iov,
			len, 0, hlimit, tclass, opt, &fl, (struct rt6_info*)dst,
			msg->msg_flags);

		if (err)
			FUNC13(sk);
		else if (!(msg->msg_flags & MSG_MORE))
			err = FUNC25(sk, &fl, rp);
		FUNC27(sk);
	}
done:
	FUNC3(dst);
out:
	FUNC6(flowlabel);
	return err<0?err:len;
do_confirm:
	FUNC2(dst);
	if (!(msg->msg_flags & MSG_PROBE) || len)
		goto back_from_confirm;
	err = 0;
	goto done;
}