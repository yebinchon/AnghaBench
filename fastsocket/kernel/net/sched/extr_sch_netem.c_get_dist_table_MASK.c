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
struct nlattr {int dummy; } ;
struct netem_sched_data {struct disttable* delay_dist; } ;
struct disttable {unsigned long size; int /*<<< orphan*/ * table; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  __s16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct disttable*) ; 
 struct disttable* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct nlattr const*) ; 
 int FUNC3 (struct nlattr const*) ; 
 struct netem_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/ * FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct Qdisc *sch, const struct nlattr *attr)
{
	struct netem_sched_data *q = FUNC4(sch);
	unsigned long n = FUNC3(attr)/sizeof(__s16);
	const __s16 *data = FUNC2(attr);
	spinlock_t *root_lock;
	struct disttable *d;
	int i;

	if (n > 65536)
		return -EINVAL;

	d = FUNC1(sizeof(*d) + n*sizeof(d->table[0]), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->size = n;
	for (i = 0; i < n; i++)
		d->table[i] = data[i];

	root_lock = FUNC5(sch);

	FUNC6(root_lock);
	FUNC0(q->delay_dist);
	q->delay_dist = d;
	FUNC7(root_lock);
	return 0;
}