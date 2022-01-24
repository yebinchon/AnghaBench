#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * counter; int /*<<< orphan*/  wait_unfrozen; int /*<<< orphan*/  wait; int /*<<< orphan*/ * lock_map; } ;
struct super_block {TYPE_1__ s_writers; } ;
struct file_system_type {int fs_flags; int /*<<< orphan*/ * s_writers_key; } ;

/* Variables and functions */
 int FS_HAS_NEW_FREEZE ; 
 int SB_FREEZE_LEVELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sb_writers_name ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct super_block *s, struct file_system_type *type)
{
	int err;
	int i;

	/* Out of tree modules don't use this mechanism */
	if (FUNC4(!(type->fs_flags & FS_HAS_NEW_FREEZE)))
		return 0;

	for (i = 0; i < SB_FREEZE_LEVELS; i++) {
		err = FUNC3(&s->s_writers.counter[i], 0);
		if (err < 0)
			goto err_out;
		FUNC1(&s->s_writers.lock_map[i], sb_writers_name[i],
				 &type->s_writers_key[i], 0);
	}
	FUNC0(&s->s_writers.wait);
	FUNC0(&s->s_writers.wait_unfrozen);
	return 0;
err_out:
	while (--i >= 0)
		FUNC2(&s->s_writers.counter[i]);
	return err;
}