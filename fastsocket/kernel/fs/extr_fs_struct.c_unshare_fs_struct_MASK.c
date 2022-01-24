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
 int ENOMEM ; 
 struct fs_struct* FUNC0 (struct fs_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (struct fs_struct*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
	struct fs_struct *fs = current->fs;
	struct fs_struct *new_fs = FUNC0(fs);
	int kill;

	if (!new_fs)
		return -ENOMEM;

	FUNC2(current);
	FUNC4(&fs->lock);
	kill = !--fs->users;
	current->fs = new_fs;
	FUNC5(&fs->lock);
	FUNC3(current);

	if (kill)
		FUNC1(fs);

	return 0;
}