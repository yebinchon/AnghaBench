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
struct ubifs_znode {struct ubifs_znode* cnext; scalar_t__ alt; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  znode; } ;
struct ubifs_info {int /*<<< orphan*/  dirty_zn_cnt; struct ubifs_znode* cnext; struct ubifs_znode* enext; TYPE_1__ zroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  COW_ZNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct ubifs_znode* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ubifs_znode* FUNC4 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ubifs_info *c)
{
	struct ubifs_znode *znode, *cnext;
	int cnt = 0;

	c->cnext = FUNC3(c->zroot.znode);
	znode = c->enext = c->cnext;
	if (!znode) {
		FUNC2("no znodes to commit");
		return 0;
	}
	cnt += 1;
	while (1) {
		FUNC6(!FUNC5(COW_ZNODE, &znode->flags));
		FUNC0(COW_ZNODE, &znode->flags);
		znode->alt = 0;
		cnext = FUNC4(znode);
		if (!cnext) {
			znode->cnext = c->cnext;
			break;
		}
		znode->cnext = cnext;
		znode = cnext;
		cnt += 1;
	}
	FUNC2("committing %d znodes", cnt);
	FUNC6(cnt == FUNC1(&c->dirty_zn_cnt));
	return cnt;
}