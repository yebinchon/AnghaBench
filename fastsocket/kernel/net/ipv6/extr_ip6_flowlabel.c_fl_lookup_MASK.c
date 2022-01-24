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
struct net {int dummy; } ;
struct ip6_flowlabel {int /*<<< orphan*/  users; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct ip6_flowlabel* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6_fl_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ip6_flowlabel *FUNC4(struct net *net, __be32 label)
{
	struct ip6_flowlabel *fl;

	FUNC2(&ip6_fl_lock);
	fl = FUNC0(net, label);
	if (fl)
		FUNC1(&fl->users);
	FUNC3(&ip6_fl_lock);
	return fl;
}