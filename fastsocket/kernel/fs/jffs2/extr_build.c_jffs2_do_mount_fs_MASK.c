#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct jffs2_sb_info {int free_size; int flash_size; int nr_blocks; int sector_size; int highest_ino; TYPE_1__* blocks; int /*<<< orphan*/ * summary; int /*<<< orphan*/  bad_used_list; int /*<<< orphan*/  bad_list; int /*<<< orphan*/  free_list; int /*<<< orphan*/  erase_complete_list; int /*<<< orphan*/  erasable_pending_wbuf_list; int /*<<< orphan*/  erase_pending_list; int /*<<< orphan*/  erase_checking_list; int /*<<< orphan*/  erasing_list; int /*<<< orphan*/  erasable_list; int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  very_dirty_list; int /*<<< orphan*/  clean_list; } ;
struct jffs2_eraseblock {int dummy; } ;
struct TYPE_6__ {int offset; int free_size; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct jffs2_sb_info*) ; 
 scalar_t__ FUNC3 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct jffs2_sb_info*) ; 
 int FUNC7 (struct jffs2_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 TYPE_1__* FUNC12 (int) ; 

int FUNC13(struct jffs2_sb_info *c)
{
	int ret;
	int i;
	int size;

	c->free_size = c->flash_size;
	c->nr_blocks = c->flash_size / c->sector_size;
	size = sizeof(struct jffs2_eraseblock) * c->nr_blocks;
#ifndef __ECOS
	if (FUNC2(c))
		c->blocks = FUNC12(size);
	else
#endif
		c->blocks = FUNC9(size, GFP_KERNEL);
	if (!c->blocks)
		return -ENOMEM;

	FUNC10(c->blocks, 0, size);
	for (i=0; i<c->nr_blocks; i++) {
		FUNC0(&c->blocks[i].list);
		c->blocks[i].offset = i * c->sector_size;
		c->blocks[i].free_size = c->sector_size;
	}

	FUNC0(&c->clean_list);
	FUNC0(&c->very_dirty_list);
	FUNC0(&c->dirty_list);
	FUNC0(&c->erasable_list);
	FUNC0(&c->erasing_list);
	FUNC0(&c->erase_checking_list);
	FUNC0(&c->erase_pending_list);
	FUNC0(&c->erasable_pending_wbuf_list);
	FUNC0(&c->erase_complete_list);
	FUNC0(&c->free_list);
	FUNC0(&c->bad_list);
	FUNC0(&c->bad_used_list);
	c->highest_ino = 1;
	c->summary = NULL;

	ret = FUNC7(c);
	if (ret)
		goto out_free;

	if (FUNC3(c)) {
		FUNC1("build_fs failed\n");
		FUNC5(c);
		FUNC6(c);
		ret = -EIO;
		goto out_free;
	}

	FUNC4(c);

	return 0;

 out_free:
#ifndef __ECOS
	if (FUNC2(c))
		FUNC11(c->blocks);
	else
#endif
		FUNC8(c->blocks);

	return ret;
}