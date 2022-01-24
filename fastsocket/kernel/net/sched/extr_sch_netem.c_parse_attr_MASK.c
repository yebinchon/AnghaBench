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
struct nla_policy {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr**,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int,int,int,struct nla_policy const*) ; 

__attribute__((used)) static int FUNC6(struct nlattr *tb[], int maxtype, struct nlattr *nla,
		      const struct nla_policy *policy, int len)
{
	int nested_len = FUNC4(nla) - FUNC0(len);

	if (nested_len < 0)
		return -EINVAL;
	if (nested_len >= FUNC2(0))
		return FUNC5(tb, maxtype, FUNC3(nla) + FUNC0(len),
				 nested_len, policy);
	FUNC1(tb, 0, sizeof(struct nlattr *) * (maxtype + 1));
	return 0;
}