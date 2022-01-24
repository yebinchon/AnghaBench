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
struct css_id {unsigned short depth; } ;
struct cgroup_subsys_state {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 struct css_id* FUNC0 (int /*<<< orphan*/ ) ; 

unsigned short FUNC1(struct cgroup_subsys_state *css)
{
	struct css_id *cssid = FUNC0(css->id);

	if (cssid)
		return cssid->depth;
	return 0;
}