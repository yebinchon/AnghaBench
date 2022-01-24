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
struct rt6_info {int rt6i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rt6_info*) ; 
 int RTF_CACHE ; 

__attribute__((used)) static int FUNC1(struct rt6_info *rt, void *arg)
{
	if (rt->rt6i_flags & RTF_CACHE) {
		FUNC0("pruning clone %p\n", rt);
		return -1;
	}

	return 0;
}