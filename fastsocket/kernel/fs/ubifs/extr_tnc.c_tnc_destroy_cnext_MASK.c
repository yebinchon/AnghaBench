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
struct ubifs_znode {int /*<<< orphan*/  flags; struct ubifs_znode* cnext; } ;
struct ubifs_info {scalar_t__ cmt_state; struct ubifs_znode* cnext; } ;

/* Variables and functions */
 scalar_t__ COMMIT_BROKEN ; 
 int /*<<< orphan*/  OBSOLETE_ZNODE ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_znode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ubifs_info *c)
{
	struct ubifs_znode *cnext;

	if (!c->cnext)
		return;
	FUNC2(c->cmt_state == COMMIT_BROKEN);
	cnext = c->cnext;
	do {
		struct ubifs_znode *znode = cnext;

		cnext = cnext->cnext;
		if (FUNC1(OBSOLETE_ZNODE, &znode->flags))
			FUNC0(znode);
	} while (cnext && cnext != c->cnext);
}