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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {void** mask; void** value; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 size_t TCA_DSMARK_MASK ; 
 int /*<<< orphan*/  TCA_DSMARK_MAX ; 
 size_t TCA_DSMARK_VALUE ; 
 size_t TCA_OPTIONS ; 
 int /*<<< orphan*/  dsmark_policy ; 
 int /*<<< orphan*/  FUNC0 (struct dsmark_qdisc_data*,unsigned long) ; 
 void* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct Qdisc*,struct dsmark_qdisc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 struct dsmark_qdisc_data* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, u32 classid, u32 parent,
			 struct nlattr **tca, unsigned long *arg)
{
	struct dsmark_qdisc_data *p = FUNC4(sch);
	struct nlattr *opt = tca[TCA_OPTIONS];
	struct nlattr *tb[TCA_DSMARK_MAX + 1];
	int err = -EINVAL;
	u8 mask = 0;

	FUNC3("dsmark_change(sch %p,[qdisc %p],classid %x,parent %x),"
		"arg 0x%lx\n", sch, p, classid, parent, *arg);

	if (!FUNC0(p, *arg)) {
		err = -ENOENT;
		goto errout;
	}

	if (!opt)
		goto errout;

	err = FUNC2(tb, TCA_DSMARK_MAX, opt, dsmark_policy);
	if (err < 0)
		goto errout;

	if (tb[TCA_DSMARK_MASK])
		mask = FUNC1(tb[TCA_DSMARK_MASK]);

	if (tb[TCA_DSMARK_VALUE])
		p->value[*arg-1] = FUNC1(tb[TCA_DSMARK_VALUE]);

	if (tb[TCA_DSMARK_MASK])
		p->mask[*arg-1] = mask;

	err = 0;

errout:
	return err;
}