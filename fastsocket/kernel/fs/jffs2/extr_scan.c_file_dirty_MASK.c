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
struct jffs2_sb_info {int /*<<< orphan*/  dirty_list; int /*<<< orphan*/  very_dirty_list; int /*<<< orphan*/  wasted_size; int /*<<< orphan*/  dirty_size; } ;
struct jffs2_eraseblock {int /*<<< orphan*/  list; int /*<<< orphan*/  dirty_size; scalar_t__ wasted_size; int /*<<< orphan*/  free_size; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct jffs2_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct jffs2_sb_info*,struct jffs2_eraseblock*,int) ; 
 int FUNC2 (struct jffs2_sb_info*,struct jffs2_eraseblock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb)
{
	int ret;

	if ((ret = FUNC1(c, jeb, 1)))
		return ret;
	if ((ret = FUNC2(c, jeb, jeb->free_size)))
		return ret;
	/* Turned wasted size into dirty, since we apparently 
	   think it's recoverable now. */
	jeb->dirty_size += jeb->wasted_size;
	c->dirty_size += jeb->wasted_size;
	c->wasted_size -= jeb->wasted_size;
	jeb->wasted_size = 0;
	if (FUNC0(c, jeb->dirty_size)) {
		FUNC3(&jeb->list, &c->very_dirty_list);
	} else {
		FUNC3(&jeb->list, &c->dirty_list);
	}
	return 0;
}