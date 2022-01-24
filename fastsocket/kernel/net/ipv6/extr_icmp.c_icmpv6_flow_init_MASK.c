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
typedef  int /*<<< orphan*/  u8 ;
struct sock {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi {int oif; scalar_t__ fl_icmp_code; int /*<<< orphan*/  fl_icmp_type; int /*<<< orphan*/  proto; int /*<<< orphan*/  fl6_dst; int /*<<< orphan*/  fl6_src; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_ICMPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr const*) ; 
 int /*<<< orphan*/  FUNC1 (struct flowi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct flowi*) ; 

void FUNC3(struct sock *sk, struct flowi *fl,
		      u8 type,
		      const struct in6_addr *saddr,
		      const struct in6_addr *daddr,
		      int oif)
{
	FUNC1(fl, 0, sizeof(*fl));
	FUNC0(&fl->fl6_src, saddr);
	FUNC0(&fl->fl6_dst, daddr);
	fl->proto	 	= IPPROTO_ICMPV6;
	fl->fl_icmp_type	= type;
	fl->fl_icmp_code	= 0;
	fl->oif			= oif;
	FUNC2(sk, fl);
}