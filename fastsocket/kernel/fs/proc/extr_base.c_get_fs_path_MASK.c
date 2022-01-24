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
struct task_struct {struct fs_struct* fs; } ;
struct path {int dummy; } ;
struct fs_struct {int /*<<< orphan*/  lock; struct path pwd; struct path root; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct path*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(struct task_struct *task, struct path *path, bool root)
{
	struct fs_struct *fs;
	int result = -ENOENT;

	FUNC3(task);
	fs = task->fs;
	if (fs) {
		FUNC1(&fs->lock);
		*path = root ? fs->root : fs->pwd;
		FUNC0(path);
		FUNC2(&fs->lock);
		result = 0;
	}
	FUNC4(task);
	return result;
}