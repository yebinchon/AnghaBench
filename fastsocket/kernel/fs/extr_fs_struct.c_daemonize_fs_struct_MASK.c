#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; } ;
struct TYPE_4__ {struct fs_struct* fs; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC0 (struct fs_struct*) ; 
 struct fs_struct init_fs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	struct fs_struct *fs = current->fs;

	if (fs) {
		int kill;

		FUNC1(current);

		FUNC3(&init_fs.lock);
		init_fs.users++;
		FUNC4(&init_fs.lock);

		FUNC3(&fs->lock);
		current->fs = &init_fs;
		kill = !--fs->users;
		FUNC4(&fs->lock);

		FUNC2(current);
		if (kill)
			FUNC0(fs);
	}
}