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
struct cgroupfs_root {int /*<<< orphan*/  hierarchy_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  hierarchy_id_lock ; 
 int /*<<< orphan*/  hierarchy_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgroupfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct cgroupfs_root *root)
{
	if (!root)
		return;

	FUNC0(!root->hierarchy_id);
	FUNC3(&hierarchy_id_lock);
	FUNC1(&hierarchy_ida, root->hierarchy_id);
	FUNC4(&hierarchy_id_lock);
	FUNC2(root);
}