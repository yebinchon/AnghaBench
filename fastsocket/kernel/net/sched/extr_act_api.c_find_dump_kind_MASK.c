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
struct tcamsg {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCAA_MAX ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 int /*<<< orphan*/  TCA_ACT_MAX_PRIO ; 
 size_t TCA_ACT_TAB ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct nlmsghdr const*,int,struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nlattr *
FUNC5(const struct nlmsghdr *n)
{
	struct nlattr *tb1, *tb2[TCA_ACT_MAX+1];
	struct nlattr *tb[TCA_ACT_MAX_PRIO + 1];
	struct nlattr *nla[TCAA_MAX + 1];
	struct nlattr *kind;

	if (FUNC4(n, sizeof(struct tcamsg), nla, TCAA_MAX, NULL) < 0)
		return NULL;
	tb1 = nla[TCA_ACT_TAB];
	if (tb1 == NULL)
		return NULL;

	if (FUNC3(tb, TCA_ACT_MAX_PRIO, FUNC1(tb1),
		      FUNC0(FUNC2(tb1)), NULL) < 0)
		return NULL;

	if (tb[1] == NULL)
		return NULL;
	if (FUNC3(tb2, TCA_ACT_MAX, FUNC1(tb[1]),
		      FUNC2(tb[1]), NULL) < 0)
		return NULL;
	kind = tb2[TCA_ACT_KIND];

	return kind;
}