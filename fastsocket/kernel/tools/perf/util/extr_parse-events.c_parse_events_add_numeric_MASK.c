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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct perf_event_attr {int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  attr ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct list_head**,int*,struct perf_event_attr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct perf_event_attr*,struct list_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event_attr*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct list_head **list, int *idx,
			     u32 type, u64 config,
			     struct list_head *head_config)
{
	struct perf_event_attr attr;

	FUNC2(&attr, 0, sizeof(attr));
	attr.type = type;
	attr.config = config;

	if (head_config &&
	    FUNC1(&attr, head_config, 1))
		return -EINVAL;

	return FUNC0(list, idx, &attr, NULL);
}