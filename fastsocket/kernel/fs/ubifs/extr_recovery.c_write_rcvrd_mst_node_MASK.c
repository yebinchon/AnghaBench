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
struct ubifs_mst_node {int /*<<< orphan*/  flags; } ;
struct ubifs_info {int mst_node_alsz; int /*<<< orphan*/  ubi; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int UBIFS_MST_LNUM ; 
 int /*<<< orphan*/  UBIFS_MST_NODE_SZ ; 
 int /*<<< orphan*/  UBIFS_MST_RCVRY ; 
 int /*<<< orphan*/  UBI_SHORTTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct ubifs_mst_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,struct ubifs_mst_node*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ubifs_info *c,
				struct ubifs_mst_node *mst)
{
	int err = 0, lnum = UBIFS_MST_LNUM, sz = c->mst_node_alsz;
	__le32 save_flags;

	FUNC1("recovery");

	save_flags = mst->flags;
	mst->flags |= FUNC0(UBIFS_MST_RCVRY);

	FUNC3(c, mst, UBIFS_MST_NODE_SZ, 1);
	err = FUNC2(c->ubi, lnum, mst, sz, UBI_SHORTTERM);
	if (err)
		goto out;
	err = FUNC2(c->ubi, lnum + 1, mst, sz, UBI_SHORTTERM);
	if (err)
		goto out;
out:
	mst->flags = save_flags;
	return err;
}