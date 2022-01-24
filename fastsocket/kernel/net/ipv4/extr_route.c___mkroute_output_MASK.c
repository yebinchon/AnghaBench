#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int obsolete; void* output; int /*<<< orphan*/  input; struct net_device* dev; int /*<<< orphan*/  flags; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_6__ {TYPE_2__ dst; } ;
struct TYPE_4__ {scalar_t__ fl4_dst; scalar_t__ fl4_src; int /*<<< orphan*/  mark; scalar_t__ oif; int /*<<< orphan*/  fl4_tos; } ;
struct rtable {scalar_t__ rt_dst; scalar_t__ rt_src; scalar_t__ rt_gateway; scalar_t__ rt_spec_dst; unsigned int rt_flags; TYPE_3__ u; int /*<<< orphan*/  rt_genid; void* idev; int /*<<< orphan*/  rt_iif; TYPE_1__ fl; } ;
struct net_device {int flags; int /*<<< orphan*/  ifindex; } ;
struct in_device {int dummy; } ;
struct flowi {scalar_t__ fl4_dst; scalar_t__ fl4_src; scalar_t__ oif; int /*<<< orphan*/  mark; int /*<<< orphan*/  proto; } ;
struct fib_result {scalar_t__ type; int prefixlen; int /*<<< orphan*/ * fi; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_HOST ; 
 int /*<<< orphan*/  DST_NOPOLICY ; 
 int /*<<< orphan*/  DST_NOXFRM ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int IFF_LOOPBACK ; 
 scalar_t__ FUNC0 (struct in_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  NOPOLICY ; 
 int /*<<< orphan*/  NOXFRM ; 
 unsigned int RTCF_BROADCAST ; 
 unsigned int RTCF_LOCAL ; 
 unsigned int RTCF_MULTICAST ; 
 scalar_t__ RTN_BROADCAST ; 
 scalar_t__ RTN_MULTICAST ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flowi const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 struct rtable* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 void* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct in_device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ip_local_deliver ; 
 void* ip_mc_output ; 
 int /*<<< orphan*/  ip_mr_input ; 
 void* ip_output ; 
 int /*<<< orphan*/  ipv4_dst_ops ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  out_slow_mc ; 
 int /*<<< orphan*/  out_slow_tot ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct rtable*,struct fib_result*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct rtable **result,
			    struct fib_result *res,
			    const struct flowi *fl,
			    const struct flowi *oldflp,
			    struct net_device *dev_out,
			    unsigned flags)
{
	struct rtable *rth;
	struct in_device *in_dev;
	u32 tos = FUNC4(oldflp);
	int err = 0;

	if (fl->fl4_dst == FUNC10(0xFFFFFFFF))
		res->type = RTN_BROADCAST;
	else if (FUNC17(fl->fl4_dst))
		res->type = RTN_MULTICAST;
	else if (FUNC14(fl->fl4_dst) || FUNC18(fl->fl4_dst))
		return -EINVAL;

	if (dev_out->flags & IFF_LOOPBACK)
		flags |= RTCF_LOCAL;

	/* get work reference to inet device */
	in_dev = FUNC11(dev_out);
	if (!in_dev)
		return -EINVAL;

	if (FUNC19(!FUNC2(in_dev))) {
		if (FUNC16(fl->fl4_src) && !(dev_out->flags & IFF_LOOPBACK)) {
			err = -EINVAL;
			goto cleanup;
		}
	}

	if (res->type == RTN_BROADCAST) {
		flags |= RTCF_BROADCAST | RTCF_LOCAL;
		if (res->fi) {
			FUNC9(res->fi);
			res->fi = NULL;
		}
	} else if (res->type == RTN_MULTICAST) {
		flags |= RTCF_MULTICAST|RTCF_LOCAL;
		if (!FUNC13(in_dev, oldflp->fl4_dst, oldflp->fl4_src,
				 oldflp->proto))
			flags &= ~RTCF_LOCAL;
		/* If multicast route do not exist use
		   default one, but do not gateway in this case.
		   Yes, it is hack.
		 */
		if (res->fi && res->prefixlen < 4) {
			FUNC9(res->fi);
			res->fi = NULL;
		}
	}


	rth = FUNC8(&ipv4_dst_ops);
	if (!rth) {
		err = -ENOBUFS;
		goto cleanup;
	}

	FUNC5(&rth->u.dst.__refcnt, 1);
	rth->u.dst.flags= DST_HOST;
	if (FUNC0(in_dev, NOXFRM))
		rth->u.dst.flags |= DST_NOXFRM;
	if (FUNC0(in_dev, NOPOLICY))
		rth->u.dst.flags |= DST_NOPOLICY;

	rth->fl.fl4_dst	= oldflp->fl4_dst;
	rth->fl.fl4_tos	= tos;
	rth->fl.fl4_src	= oldflp->fl4_src;
	rth->fl.oif	= oldflp->oif;
	rth->fl.mark    = oldflp->mark;
	rth->rt_dst	= fl->fl4_dst;
	rth->rt_src	= fl->fl4_src;
	rth->rt_iif	= oldflp->oif ? : dev_out->ifindex;
	/* get references to the devices that are to be hold by the routing
	   cache entry */
	rth->u.dst.dev	= dev_out;
	FUNC6(dev_out);
	rth->idev	= FUNC11(dev_out);
	rth->rt_gateway = fl->fl4_dst;
	rth->rt_spec_dst= fl->fl4_src;

	rth->u.dst.output=ip_output;
	rth->u.dst.obsolete = -1;
	rth->rt_genid = FUNC20(FUNC7(dev_out));

	FUNC3(out_slow_tot);

	if (flags & RTCF_LOCAL) {
		rth->u.dst.input = ip_local_deliver;
		rth->rt_spec_dst = fl->fl4_dst;
	}
	if (flags & (RTCF_BROADCAST | RTCF_MULTICAST)) {
		rth->rt_spec_dst = fl->fl4_src;
		if (flags & RTCF_LOCAL &&
		    !(dev_out->flags & IFF_LOOPBACK)) {
			rth->u.dst.output = ip_mc_output;
			FUNC3(out_slow_mc);
		}
#ifdef CONFIG_IP_MROUTE
		if (res->type == RTN_MULTICAST) {
			if (IN_DEV_MFORWARD(in_dev) &&
			    !ipv4_is_local_multicast(oldflp->fl4_dst)) {
				rth->u.dst.input = ip_mr_input;
				rth->u.dst.output = ip_mc_output;
			}
		}
#endif
	}

	FUNC21(rth, res, 0);

	rth->rt_flags = flags;

	*result = rth;
 cleanup:
	/* release work reference to inet device */
	FUNC12(in_dev);

	return err;
}