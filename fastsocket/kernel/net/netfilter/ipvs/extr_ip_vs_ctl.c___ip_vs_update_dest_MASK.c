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
struct ip_vs_service {scalar_t__ af; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip; int /*<<< orphan*/  in6; } ;
struct ip_vs_dest_user_kern {int weight; int conn_flags; scalar_t__ u_threshold; int /*<<< orphan*/  l_threshold; TYPE_1__ addr; } ;
struct ip_vs_dest {scalar_t__ u_threshold; int /*<<< orphan*/  l_threshold; int /*<<< orphan*/  flags; int /*<<< orphan*/  stats; struct ip_vs_service* svc; int /*<<< orphan*/  conn_flags; int /*<<< orphan*/  weight; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int IP_VS_CONN_F_DEST_MASK ; 
 int IP_VS_CONN_F_FWD_MASK ; 
 int IP_VS_CONN_F_INACTIVE ; 
 int IP_VS_CONN_F_LOCALNODE ; 
 int IP_VS_CONN_F_MASQ ; 
 int IP_VS_CONN_F_NOOUTPUT ; 
 int /*<<< orphan*/  IP_VS_DEST_F_AVAILABLE ; 
 int /*<<< orphan*/  IP_VS_DEST_F_OVERLOAD ; 
 scalar_t__ RTN_LOCAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_vs_dest*,struct ip_vs_service*) ; 
 int /*<<< orphan*/  __ip_vs_rs_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct ip_vs_service *svc,
		    struct ip_vs_dest *dest, struct ip_vs_dest_user_kern *udest)
{
	int conn_flags;

	/* set the weight and the flags */
	FUNC3(&dest->weight, udest->weight);
	conn_flags = udest->conn_flags & IP_VS_CONN_F_DEST_MASK;
	conn_flags |= IP_VS_CONN_F_INACTIVE;

	/* check if local node and update the flags */
#ifdef CONFIG_IP_VS_IPV6
	if (svc->af == AF_INET6) {
		if (__ip_vs_addr_is_local_v6(&udest->addr.in6)) {
			conn_flags = (conn_flags & ~IP_VS_CONN_F_FWD_MASK)
				| IP_VS_CONN_F_LOCALNODE;
		}
	} else
#endif
		if (FUNC4(&init_net, udest->addr.ip) == RTN_LOCAL) {
			conn_flags = (conn_flags & ~IP_VS_CONN_F_FWD_MASK)
				| IP_VS_CONN_F_LOCALNODE;
		}

	/* set the IP_VS_CONN_F_NOOUTPUT flag if not masquerading/NAT */
	if ((conn_flags & IP_VS_CONN_F_FWD_MASK) != IP_VS_CONN_F_MASQ) {
		conn_flags |= IP_VS_CONN_F_NOOUTPUT;
	} else {
		/*
		 *    Put the real service in ip_vs_rtable if not present.
		 *    For now only for NAT!
		 */
		FUNC7(&__ip_vs_rs_lock);
		FUNC5(dest);
		FUNC8(&__ip_vs_rs_lock);
	}
	FUNC3(&dest->conn_flags, conn_flags);

	/* bind the service */
	if (!dest->svc) {
		FUNC1(dest, svc);
	} else {
		if (dest->svc != svc) {
			FUNC2(dest);
			FUNC6(&dest->stats);
			FUNC1(dest, svc);
		}
	}

	/* set the dest status flags */
	dest->flags |= IP_VS_DEST_F_AVAILABLE;

	if (udest->u_threshold == 0 || udest->u_threshold > dest->u_threshold)
		dest->flags &= ~IP_VS_DEST_F_OVERLOAD;
	dest->u_threshold = udest->u_threshold;
	dest->l_threshold = udest->l_threshold;
}