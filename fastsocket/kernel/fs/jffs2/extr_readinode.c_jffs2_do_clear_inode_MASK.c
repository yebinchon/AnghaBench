#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_info {int /*<<< orphan*/  sem; TYPE_1__* inocache; struct jffs2_full_dirent* dents; int /*<<< orphan*/ * target; int /*<<< orphan*/  fragtree; TYPE_3__* metadata; } ;
struct jffs2_full_dirent {struct jffs2_full_dirent* next; } ;
struct TYPE_6__ {int /*<<< orphan*/  raw; } ;
struct TYPE_5__ {scalar_t__ state; void* nodes; int /*<<< orphan*/  pino_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  INO_STATE_CHECKEDABSENT ; 
 scalar_t__ INO_STATE_CHECKING ; 
 int /*<<< orphan*/  INO_STATE_CLEARING ; 
 int /*<<< orphan*/  FUNC0 (struct jffs2_sb_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct jffs2_full_dirent*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct jffs2_sb_info*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct jffs2_sb_info *c, struct jffs2_inode_info *f)
{
	struct jffs2_full_dirent *fd, *fds;
	int deleted;

	FUNC6(c, f->inocache);
	FUNC8(&f->sem);
	deleted = f->inocache && !f->inocache->pino_nlink;

	if (f->inocache && f->inocache->state != INO_STATE_CHECKING)
		FUNC5(c, f->inocache, INO_STATE_CLEARING);

	if (f->metadata) {
		if (deleted)
			FUNC4(c, f->metadata->raw);
		FUNC2(f->metadata);
	}

	FUNC3(&f->fragtree, deleted?c:NULL);

	if (f->target) {
		FUNC7(f->target);
		f->target = NULL;
	}

	fds = f->dents;
	while(fds) {
		fd = fds;
		fds = fd->next;
		FUNC1(fd);
	}

	if (f->inocache && f->inocache->state != INO_STATE_CHECKING) {
		FUNC5(c, f->inocache, INO_STATE_CHECKEDABSENT);
		if (f->inocache->nodes == (void *)f->inocache)
			FUNC0(c, f->inocache);
	}

	FUNC9(&f->sem);
}