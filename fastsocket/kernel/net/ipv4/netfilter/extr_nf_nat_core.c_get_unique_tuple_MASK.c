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
struct nf_nat_range {int flags; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct nf_nat_protocol {int /*<<< orphan*/  (* unique_tuple ) (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ;scalar_t__ (* in_range ) (struct nf_conntrack_tuple const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  protonum; } ;
typedef  struct nf_conntrack_tuple {TYPE_1__ dst; } const nf_conntrack_tuple ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;

/* Variables and functions */
 int IP_NAT_MANIP_SRC ; 
 int IP_NAT_RANGE_PROTO_RANDOM ; 
 int IP_NAT_RANGE_PROTO_SPECIFIED ; 
 struct nf_nat_protocol* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct net*,struct nf_conntrack_tuple const*,struct nf_conntrack_tuple const*,struct nf_nat_range const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_tuple const*,struct nf_nat_range const*,struct nf_conn*,int) ; 
 scalar_t__ FUNC3 (struct nf_conntrack_tuple const*,struct nf_nat_range const*) ; 
 struct net* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conntrack_tuple const*,struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ; 
 scalar_t__ FUNC10 (struct nf_conntrack_tuple const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ; 

__attribute__((used)) static void
FUNC12(struct nf_conntrack_tuple *tuple,
		 const struct nf_conntrack_tuple *orig_tuple,
		 const struct nf_nat_range *range,
		 struct nf_conn *ct,
		 enum nf_nat_manip_type maniptype)
{
	struct net *net = FUNC4(ct);
	const struct nf_nat_protocol *proto;

	/* 1) If this srcip/proto/src-proto-part is currently mapped,
	   and that same mapping gives a unique tuple within the given
	   range, use that.

	   This is only required for source (ie. NAT/masq) mappings.
	   So far, we don't do local source mappings, so multiple
	   manips not an issue.  */
	if (maniptype == IP_NAT_MANIP_SRC &&
	    !(range->flags & IP_NAT_RANGE_PROTO_RANDOM)) {
		/* try the original tuple first */
		if (FUNC3(orig_tuple, range)) {
			if (!FUNC5(orig_tuple, ct)) {
				*tuple = *orig_tuple;
				return;
			}
		} else if (FUNC1(net, orig_tuple, tuple,
			   range)) {
			FUNC6("get_unique_tuple: Found current src map\n");
			if (!FUNC5(tuple, ct))
				return;
		}
	}

	/* 2) Select the least-used IP/proto combination in the given
	   range. */
	*tuple = *orig_tuple;
	FUNC2(tuple, range, ct, maniptype);

	/* 3) The per-protocol part of the manip is made to map into
	   the range to make a unique tuple. */

	FUNC7();
	proto = FUNC0(orig_tuple->dst.protonum);

	/* Change protocol info to have some randomization */
	if (range->flags & IP_NAT_RANGE_PROTO_RANDOM) {
		proto->unique_tuple(tuple, range, maniptype, ct);
		goto out;
	}

	/* Only bother mapping if it's not already in range and unique */
	if ((!(range->flags & IP_NAT_RANGE_PROTO_SPECIFIED) ||
	     proto->in_range(tuple, maniptype, &range->min, &range->max)) &&
	    !FUNC5(tuple, ct))
		goto out;

	/* Last change: get protocol to try to obtain unique tuple. */
	proto->unique_tuple(tuple, range, maniptype, ct);
out:
	FUNC8();
}