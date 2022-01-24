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
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TCA_GRED_DPS ; 
 int /*<<< orphan*/  TCA_GRED_MAX ; 
 size_t TCA_GRED_PARMS ; 
 size_t TCA_GRED_STAB ; 
 int FUNC0 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  gred_policy ; 
 int FUNC1 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, struct nlattr *opt)
{
	struct nlattr *tb[TCA_GRED_MAX + 1];
	int err;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC1(tb, TCA_GRED_MAX, opt, gred_policy);
	if (err < 0)
		return err;

	if (tb[TCA_GRED_PARMS] || tb[TCA_GRED_STAB])
		return -EINVAL;

	return FUNC0(sch, tb[TCA_GRED_DPS]);
}