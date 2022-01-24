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
struct meta_value {unsigned long val; int len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct meta_value *dst, struct nlattr *nla)
{
	int len = FUNC2(nla);

	dst->val = (unsigned long)FUNC0(FUNC1(nla), len, GFP_KERNEL);
	if (dst->val == 0UL)
		return -ENOMEM;
	dst->len = len;
	return 0;
}