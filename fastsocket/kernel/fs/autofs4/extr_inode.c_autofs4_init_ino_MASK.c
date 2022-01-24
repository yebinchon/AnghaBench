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
struct autofs_sb_info {int dummy; } ;
struct autofs_info {int /*<<< orphan*/  (* free ) (struct autofs_info*) ;int /*<<< orphan*/  u; struct autofs_sb_info* sbi; int /*<<< orphan*/  last_used; int /*<<< orphan*/  mode; scalar_t__ gid; scalar_t__ uid; int /*<<< orphan*/  count; int /*<<< orphan*/  expiring; scalar_t__ active_count; int /*<<< orphan*/  active; scalar_t__ size; int /*<<< orphan*/ * dentry; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct autofs_info*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct autofs_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct autofs_info*) ; 

struct autofs_info *FUNC7(struct autofs_info *ino,
				     struct autofs_sb_info *sbi, mode_t mode)
{
	int reinit = 1;

	if (ino == NULL) {
		reinit = 0;
		ino = FUNC4(sizeof(*ino), GFP_KERNEL);
	}

	if (ino == NULL)
		return NULL;

	if (!reinit) {
		ino->flags = 0;
		ino->dentry = NULL;
		ino->size = 0;
		FUNC0(&ino->active);
		ino->active_count = 0;
		FUNC0(&ino->expiring);
		FUNC2(&ino->count, 0);
	}

	ino->uid = 0;
	ino->gid = 0;
	ino->mode = mode;
	ino->last_used = jiffies;

	ino->sbi = sbi;

	if (reinit && ino->free)
		(ino->free)(ino);

	FUNC5(&ino->u, 0, sizeof(ino->u));

	ino->free = NULL;

	if (FUNC1(mode))
		ino->free = ino_lnkfree;

	return ino;
}