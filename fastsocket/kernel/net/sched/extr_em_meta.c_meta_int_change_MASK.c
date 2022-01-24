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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct meta_value {unsigned long val; int len; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct nlattr*) ; 
 unsigned long FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr*) ; 

__attribute__((used)) static int FUNC3(struct meta_value *dst, struct nlattr *nla)
{
	if (FUNC2(nla) >= sizeof(unsigned long)) {
		dst->val = *(unsigned long *) FUNC0(nla);
		dst->len = sizeof(unsigned long);
	} else if (FUNC2(nla) == sizeof(u32)) {
		dst->val = FUNC1(nla);
		dst->len = sizeof(u32);
	} else
		return -EINVAL;

	return 0;
}