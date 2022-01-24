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
struct TYPE_4__ {int /*<<< orphan*/  sin6_scope_id; int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;
union sctp_addr {TYPE_1__ v6; TYPE_3__ sa; } ;
struct sctp_sock {TYPE_2__* pf; } ;
struct sctp_af {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {struct sctp_af* af; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int IPV6_ADDR_LINKLOCAL ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct sctp_af* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sctp_sock *opt, union sctp_addr *addr)
{
	struct sctp_af *af = NULL;

	/* ASSERT: address family has already been verified. */
	if (addr->sa.sa_family != AF_INET6)
		af = FUNC3(addr->sa.sa_family);
	else {
		int type = FUNC2(&addr->v6.sin6_addr);
		struct net_device *dev;

		if (type & IPV6_ADDR_LINKLOCAL) {
			if (!addr->v6.sin6_scope_id)
				return 0;
			dev = FUNC0(&init_net, addr->v6.sin6_scope_id);
			if (!dev)
				return 0;
			FUNC1(dev);
		}
		af = opt->pf->af;
	}

	return af != NULL;
}