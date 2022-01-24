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
struct cgroupfs_root {scalar_t__ hierarchy_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  hierarchy_id_lock ; 
 int /*<<< orphan*/  hierarchy_ida ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ next_hierarchy_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct cgroupfs_root *root)
{
	int ret = 0;

	do {
		if (!FUNC3(&hierarchy_ida, GFP_KERNEL))
			return false;
		FUNC4(&hierarchy_id_lock);
		/* Try to allocate the next unused ID */
		ret = FUNC2(&hierarchy_ida, next_hierarchy_id,
					&root->hierarchy_id);
		if (ret == -ENOSPC)
			/* Try again starting from 0 */
			ret = FUNC1(&hierarchy_ida, &root->hierarchy_id);
		if (!ret) {
			next_hierarchy_id = root->hierarchy_id + 1;
		} else if (ret != -EAGAIN) {
			/* Can only get here if the 31-bit IDR is full ... */
			FUNC0(ret);
		}
		FUNC5(&hierarchy_id_lock);
	} while (ret);
	return true;
}