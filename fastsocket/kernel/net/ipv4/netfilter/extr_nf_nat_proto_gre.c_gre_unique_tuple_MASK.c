#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  unsigned int u_int16_t ;
struct TYPE_20__ {int /*<<< orphan*/  key; } ;
struct TYPE_11__ {TYPE_9__ gre; } ;
struct TYPE_18__ {int /*<<< orphan*/  key; } ;
struct TYPE_19__ {TYPE_7__ gre; } ;
struct nf_nat_range {int flags; TYPE_10__ max; TYPE_8__ min; } ;
struct TYPE_15__ {int /*<<< orphan*/  key; } ;
struct TYPE_16__ {TYPE_4__ gre; } ;
struct TYPE_17__ {TYPE_5__ u; } ;
struct TYPE_12__ {int /*<<< orphan*/  key; } ;
struct TYPE_13__ {TYPE_1__ gre; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_3__ src; } ;
struct nf_conn {int /*<<< orphan*/  master; } ;
typedef  enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int IP_NAT_MANIP_SRC ; 
 int IP_NAT_RANGE_PROTO_SPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple*,struct nf_conn const*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static bool
FUNC4(struct nf_conntrack_tuple *tuple,
		 const struct nf_nat_range *range,
		 enum nf_nat_manip_type maniptype,
		 const struct nf_conn *ct)
{
	static u_int16_t key;
	__be16 *keyptr;
	unsigned int min, i, range_size;

	/* If there is no master conntrack we are not PPTP,
	   do not change tuples */
	if (!ct->master)
		return false;

	if (maniptype == IP_NAT_MANIP_SRC)
		keyptr = &tuple->src.u.gre.key;
	else
		keyptr = &tuple->dst.u.gre.key;

	if (!(range->flags & IP_NAT_RANGE_PROTO_SPECIFIED)) {
		FUNC3("%p: NATing GRE PPTP\n", ct);
		min = 1;
		range_size = 0xffff;
	} else {
		min = FUNC2(range->min.gre.key);
		range_size = FUNC2(range->max.gre.key) - min + 1;
	}

	FUNC3("min = %u, range_size = %u\n", min, range_size);

	for (i = 0; i < range_size; i++, key++) {
		*keyptr = FUNC0(min + key % range_size);
		if (!FUNC1(tuple, ct))
			return true;
	}

	FUNC3("%p: no NAT mapping\n", ct);
	return false;
}