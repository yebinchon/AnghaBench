#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned long lastuse; scalar_t__ expires; int /*<<< orphan*/  __refcnt; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rtable {TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct rtable*) ; 
 scalar_t__ FUNC2 (struct rtable*) ; 
 scalar_t__ FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct rtable *rth, unsigned long tmo1, unsigned long tmo2)
{
	unsigned long age;
	int ret = 0;

	if (FUNC0(&rth->u.dst.__refcnt))
		goto out;

	ret = 1;
	if (rth->u.dst.expires &&
	    FUNC3(jiffies, rth->u.dst.expires))
		goto out;

	age = jiffies - rth->u.dst.lastuse;
	ret = 0;
	if ((age <= tmo1 && !FUNC1(rth)) ||
	    (age <= tmo2 && FUNC2(rth)))
		goto out;
	ret = 1;
out:	return ret;
}