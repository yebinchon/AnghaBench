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
struct btrfs_root {int /*<<< orphan*/  log_mutex; int /*<<< orphan*/  log_writers; scalar_t__ log_root; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct btrfs_root *root)
{
	int ret = -ENOENT;

	FUNC3();
	if (!root->log_root)
		return -ENOENT;

	FUNC1(&root->log_mutex);
	if (root->log_root) {
		ret = 0;
		FUNC0(&root->log_writers);
	}
	FUNC2(&root->log_mutex);
	return ret;
}