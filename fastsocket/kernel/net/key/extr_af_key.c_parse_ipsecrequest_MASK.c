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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  proto; } ;
struct xfrm_tmpl {int mode; int optional; scalar_t__ reqid; int encap_family; int allalgs; TYPE_1__ id; int /*<<< orphan*/  saddr; } ;
struct xfrm_policy {int xfrm_nr; int family; struct xfrm_tmpl* xfrm_vec; } ;
struct sockaddr {int dummy; } ;
struct sadb_x_ipsecrequest {scalar_t__ sadb_x_ipsecrequest_mode; scalar_t__ sadb_x_ipsecrequest_level; scalar_t__ sadb_x_ipsecrequest_reqid; int /*<<< orphan*/  sadb_x_ipsecrequest_proto; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ELOOP ; 
 int ENOBUFS ; 
 scalar_t__ IPSEC_LEVEL_UNIQUE ; 
 scalar_t__ IPSEC_LEVEL_USE ; 
 scalar_t__ IPSEC_MANUAL_REQID_MAX ; 
 scalar_t__ XFRM_MAX_DEPTH ; 
 int XFRM_MODE_TUNNEL ; 
 scalar_t__ FUNC0 (struct net*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int) ; 
 struct net* FUNC4 (struct xfrm_policy*) ; 

__attribute__((used)) static int
FUNC5(struct xfrm_policy *xp, struct sadb_x_ipsecrequest *rq)
{
	struct net *net = FUNC4(xp);
	struct xfrm_tmpl *t = xp->xfrm_vec + xp->xfrm_nr;
	int mode;

	if (xp->xfrm_nr >= XFRM_MAX_DEPTH)
		return -ELOOP;

	if (rq->sadb_x_ipsecrequest_mode == 0)
		return -EINVAL;

	t->id.proto = rq->sadb_x_ipsecrequest_proto; /* XXX check proto */
	if ((mode = FUNC1(rq->sadb_x_ipsecrequest_mode)) < 0)
		return -EINVAL;
	t->mode = mode;
	if (rq->sadb_x_ipsecrequest_level == IPSEC_LEVEL_USE)
		t->optional = 1;
	else if (rq->sadb_x_ipsecrequest_level == IPSEC_LEVEL_UNIQUE) {
		t->reqid = rq->sadb_x_ipsecrequest_reqid;
		if (t->reqid > IPSEC_MANUAL_REQID_MAX)
			t->reqid = 0;
		if (!t->reqid && !(t->reqid = FUNC0(net)))
			return -ENOBUFS;
	}

	/* addresses present only in tunnel mode */
	if (t->mode == XFRM_MODE_TUNNEL) {
		u8 *sa = (u8 *) (rq + 1);
		int family, socklen;

		family = FUNC2((struct sockaddr *)sa,
						&t->saddr);
		if (!family)
			return -EINVAL;

		socklen = FUNC3(family);
		if (FUNC2((struct sockaddr *)(sa + socklen),
					   &t->id.daddr) != family)
			return -EINVAL;
		t->encap_family = family;
	} else
		t->encap_family = xp->family;

	/* No way to set this via kame pfkey */
	t->allalgs = 1;
	xp->xfrm_nr++;
	return 0;
}