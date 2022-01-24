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
typedef  void* u32 ;
typedef  int u16 ;
struct nlattr {int dummy; } ;
struct dsmark_qdisc_data {int indices; int /*<<< orphan*/ * q; int /*<<< orphan*/  set_tc_index; void* default_index; int /*<<< orphan*/ * value; int /*<<< orphan*/ * mask; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* NO_DEFAULT_INDEX ; 
 size_t TCA_DSMARK_DEFAULT_INDEX ; 
 size_t TCA_DSMARK_INDICES ; 
 int /*<<< orphan*/  TCA_DSMARK_MAX ; 
 size_t TCA_DSMARK_SET_TC_INDEX ; 
 int /*<<< orphan*/  dsmark_policy ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 void* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC6 (char*,struct Qdisc*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*) ; 
 struct dsmark_qdisc_data* FUNC9 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct nlattr *opt)
{
	struct dsmark_qdisc_data *p = FUNC9(sch);
	struct nlattr *tb[TCA_DSMARK_MAX + 1];
	int err = -EINVAL;
	u32 default_index = NO_DEFAULT_INDEX;
	u16 indices;
	u8 *mask;

	FUNC6("dsmark_init(sch %p,[qdisc %p],opt %p)\n", sch, p, opt);

	if (!opt)
		goto errout;

	err = FUNC5(tb, TCA_DSMARK_MAX, opt, dsmark_policy);
	if (err < 0)
		goto errout;

	err = -EINVAL;
	indices = FUNC4(tb[TCA_DSMARK_INDICES]);

	if (FUNC0(indices) != 1)
		goto errout;

	if (tb[TCA_DSMARK_DEFAULT_INDEX])
		default_index = FUNC4(tb[TCA_DSMARK_DEFAULT_INDEX]);

	mask = FUNC1(indices * 2, GFP_KERNEL);
	if (mask == NULL) {
		err = -ENOMEM;
		goto errout;
	}

	p->mask = mask;
	FUNC2(p->mask, 0xff, indices);

	p->value = p->mask + indices;
	FUNC2(p->value, 0, indices);

	p->indices = indices;
	p->default_index = default_index;
	p->set_tc_index = FUNC3(tb[TCA_DSMARK_SET_TC_INDEX]);

	p->q = FUNC7(FUNC8(sch), sch->dev_queue,
				 &pfifo_qdisc_ops, sch->handle);
	if (p->q == NULL)
		p->q = &noop_qdisc;

	FUNC6("dsmark_init: qdisc %p\n", p->q);

	err = 0;
errout:
	return err;
}