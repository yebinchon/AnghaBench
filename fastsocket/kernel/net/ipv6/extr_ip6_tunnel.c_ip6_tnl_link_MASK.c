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
struct ip6_tnl_net {int dummy; } ;
struct ip6_tnl {struct ip6_tnl* next; int /*<<< orphan*/  parms; } ;

/* Variables and functions */
 struct ip6_tnl** FUNC0 (struct ip6_tnl_net*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_tnl_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct ip6_tnl_net *ip6n, struct ip6_tnl *t)
{
	struct ip6_tnl **tp = FUNC0(ip6n, &t->parms);

	t->next = *tp;
	FUNC1(&ip6_tnl_lock);
	*tp = t;
	FUNC2(&ip6_tnl_lock);
}