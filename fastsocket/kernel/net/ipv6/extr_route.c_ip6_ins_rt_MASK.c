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
struct rt6_info {int /*<<< orphan*/  rt6i_dev; } ;
struct nl_info {int /*<<< orphan*/  nl_net; } ;

/* Variables and functions */
 int FUNC0 (struct rt6_info*,struct nl_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct rt6_info *rt)
{
	struct nl_info info = {
		.nl_net = FUNC1(rt->rt6i_dev),
	};
	return FUNC0(rt, &info);
}