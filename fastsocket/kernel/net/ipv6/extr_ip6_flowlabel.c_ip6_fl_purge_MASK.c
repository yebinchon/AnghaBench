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
struct ip6_flowlabel {struct ip6_flowlabel* next; int /*<<< orphan*/  users; struct net* fl_net; } ;

/* Variables and functions */
 int FL_HASH_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip6_flowlabel*) ; 
 struct ip6_flowlabel** fl_ht ; 
 int /*<<< orphan*/  fl_size ; 
 int /*<<< orphan*/  ip6_fl_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net *net)
{
	int i;

	FUNC3(&ip6_fl_lock);
	for (i = 0; i <= FL_HASH_MASK; i++) {
		struct ip6_flowlabel *fl, **flp;
		flp = &fl_ht[i];
		while ((fl = *flp) != NULL) {
			if (fl->fl_net == net && FUNC1(&fl->users) == 0) {
				*flp = fl->next;
				FUNC2(fl);
				FUNC0(&fl_size);
				continue;
			}
			flp = &fl->next;
		}
	}
	FUNC4(&ip6_fl_lock);
}