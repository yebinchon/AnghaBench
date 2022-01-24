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
struct fs_struct {int users; int /*<<< orphan*/  lock; int /*<<< orphan*/  pwd; int /*<<< orphan*/  root; int /*<<< orphan*/  umask; scalar_t__ in_exec; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fs_cachep ; 
 struct fs_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct fs_struct *FUNC5(struct fs_struct *old)
{
	struct fs_struct *fs = FUNC0(fs_cachep, GFP_KERNEL);
	/* We don't need to lock fs - think why ;-) */
	if (fs) {
		fs->users = 1;
		fs->in_exec = 0;
		FUNC4(&fs->lock);
		fs->umask = old->umask;
		FUNC2(&old->lock);
		fs->root = old->root;
		FUNC1(&old->root);
		fs->pwd = old->pwd;
		FUNC1(&old->pwd);
		FUNC3(&old->lock);
	}
	return fs;
}