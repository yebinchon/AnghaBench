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
struct sk_buff {int dummy; } ;
struct ip_vs_sh_bucket {int dummy; } ;
struct ip_vs_service {int /*<<< orphan*/  af; scalar_t__ sched_data; } ;
struct ip_vs_iphdr {int /*<<< orphan*/  saddr; } ;
struct ip_vs_dest {int flags; int /*<<< orphan*/  port; int /*<<< orphan*/  addr; int /*<<< orphan*/  weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_DEST_F_AVAILABLE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_vs_iphdr*) ; 
 struct ip_vs_dest* FUNC6 (int /*<<< orphan*/ ,struct ip_vs_sh_bucket*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct ip_vs_dest*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff const*) ; 

__attribute__((used)) static struct ip_vs_dest *
FUNC10(struct ip_vs_service *svc, const struct sk_buff *skb)
{
	struct ip_vs_dest *dest;
	struct ip_vs_sh_bucket *tbl;
	struct ip_vs_iphdr iph;

	FUNC5(svc->af, FUNC9(skb), &iph);

	FUNC0(6, "ip_vs_sh_schedule(): Scheduling...\n");

	tbl = (struct ip_vs_sh_bucket *)svc->sched_data;
	dest = FUNC6(svc->af, tbl, &iph.saddr);
	if (!dest
	    || !(dest->flags & IP_VS_DEST_F_AVAILABLE)
	    || FUNC4(&dest->weight) <= 0
	    || FUNC7(dest)) {
		FUNC3("SH: no destination available\n");
		return NULL;
	}

	FUNC2(6, "SH: source IP address %s --> server %s:%d\n",
		      FUNC1(svc->af, &iph.saddr),
		      FUNC1(svc->af, &dest->addr),
		      FUNC8(dest->port));

	return dest;
}