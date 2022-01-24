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
struct ip_vs_iphdr {int /*<<< orphan*/  saddr; int /*<<< orphan*/  daddr; } ;
struct ip_vs_conn_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  PORT_ISAKMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ip_vs_conn_param*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int af, const struct ip_vs_iphdr *iph,
			     int inverse, struct ip_vs_conn_param *p)
{
	if (FUNC2(!inverse))
		FUNC1(af, IPPROTO_UDP,
				      &iph->saddr, FUNC0(PORT_ISAKMP),
				      &iph->daddr, FUNC0(PORT_ISAKMP), p);
	else
		FUNC1(af, IPPROTO_UDP,
				      &iph->daddr, FUNC0(PORT_ISAKMP),
				      &iph->saddr, FUNC0(PORT_ISAKMP), p);
}