#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct meta_value {int dummy; } ;
struct TYPE_2__ {int (* change ) (struct meta_value*,struct nlattr*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__* FUNC0 (struct meta_value*) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct meta_value*,struct nlattr*) ; 

__attribute__((used)) static inline int FUNC3(struct meta_value *dst, struct nlattr *nla)
{
	if (nla) {
		if (FUNC1(nla) == 0)
			return -EINVAL;

		return FUNC0(dst)->change(dst, nla);
	}

	return 0;
}