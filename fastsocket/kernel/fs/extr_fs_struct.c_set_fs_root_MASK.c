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
struct path {scalar_t__ dentry; } ;
struct fs_struct {int /*<<< orphan*/  lock; struct path root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fs_struct *fs, struct path *path)
{
	struct path old_root;

	FUNC2(&fs->lock);
	old_root = fs->root;
	fs->root = *path;
	FUNC0(path);
	FUNC3(&fs->lock);
	if (old_root.dentry)
		FUNC1(&old_root);
}