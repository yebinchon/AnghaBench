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
struct ubifs_znode {int child_cnt; scalar_t__ level; TYPE_1__* zbranch; } ;
struct TYPE_2__ {struct ubifs_znode* znode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC3 (struct ubifs_znode*) ; 
 struct ubifs_znode* FUNC4 (struct ubifs_znode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_znode*) ; 

long FUNC6(struct ubifs_znode *znode)
{
	struct ubifs_znode *zn = FUNC3(znode);
	long clean_freed = 0;
	int n;

	FUNC2(zn);
	while (1) {
		for (n = 0; n < zn->child_cnt; n++) {
			if (!zn->zbranch[n].znode)
				continue;

			if (zn->level > 0 &&
			    !FUNC5(zn->zbranch[n].znode))
				clean_freed += 1;

			FUNC0();
			FUNC1(zn->zbranch[n].znode);
		}

		if (zn == znode) {
			if (!FUNC5(zn))
				clean_freed += 1;
			FUNC1(zn);
			return clean_freed;
		}

		zn = FUNC4(zn);
	}
}