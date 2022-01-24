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
struct ubifs_znode {int /*<<< orphan*/  flags; } ;
struct ubifs_zbranch {scalar_t__ len; scalar_t__ offs; scalar_t__ lnum; struct ubifs_znode* znode; } ;
struct ubifs_info {int /*<<< orphan*/  clean_zn_cnt; int /*<<< orphan*/  dirty_zn_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  DIRTY_ZNODE ; 
 struct ubifs_znode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ubifs_znode*) ; 
 int FUNC2 (struct ubifs_info*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ubifs_znode* FUNC5 (struct ubifs_info*,struct ubifs_znode*) ; 
 int FUNC6 (struct ubifs_info*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ubifs_clean_zn_cnt ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct ubifs_znode *FUNC10(struct ubifs_info *c,
					   struct ubifs_zbranch *zbr)
{
	struct ubifs_znode *znode = zbr->znode;
	struct ubifs_znode *zn;
	int err;

	if (!FUNC8(COW_ZNODE, &znode->flags)) {
		/* znode is not being committed */
		if (!FUNC7(DIRTY_ZNODE, &znode->flags)) {
			FUNC4(&c->dirty_zn_cnt);
			FUNC3(&c->clean_zn_cnt);
			FUNC3(&ubifs_clean_zn_cnt);
			err = FUNC2(c, zbr->lnum, zbr->len);
			if (FUNC9(err))
				return FUNC0(err);
		}
		return znode;
	}

	zn = FUNC5(c, znode);
	if (FUNC1(zn))
		return zn;

	if (zbr->len) {
		err = FUNC6(c, zbr->lnum, zbr->offs);
		if (FUNC9(err))
			return FUNC0(err);
		err = FUNC2(c, zbr->lnum, zbr->len);
	} else
		err = 0;

	zbr->znode = zn;
	zbr->lnum = 0;
	zbr->offs = 0;
	zbr->len = 0;

	if (FUNC9(err))
		return FUNC0(err);
	return zn;
}