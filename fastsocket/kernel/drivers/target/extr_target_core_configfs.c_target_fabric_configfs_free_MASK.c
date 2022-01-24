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
struct target_fabric_configfs {int /*<<< orphan*/  tf_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_tf_lock ; 
 int /*<<< orphan*/  FUNC0 (struct target_fabric_configfs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(
	struct target_fabric_configfs *tf)
{
	FUNC2(&g_tf_lock);
	FUNC1(&tf->tf_list);
	FUNC3(&g_tf_lock);

	FUNC0(tf);
}