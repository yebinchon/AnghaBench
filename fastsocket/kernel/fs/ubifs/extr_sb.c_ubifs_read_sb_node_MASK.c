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
struct ubifs_sb_node {int dummy; } ;
struct ubifs_info {int /*<<< orphan*/  min_io_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 struct ubifs_sb_node* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  UBIFS_SB_LNUM ; 
 int /*<<< orphan*/  UBIFS_SB_NODE ; 
 int /*<<< orphan*/  UBIFS_SB_NODE_SZ ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_sb_node*) ; 
 struct ubifs_sb_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_info*,struct ubifs_sb_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct ubifs_sb_node *FUNC5(struct ubifs_info *c)
{
	struct ubifs_sb_node *sup;
	int err;

	sup = FUNC3(FUNC0(UBIFS_SB_NODE_SZ, c->min_io_size), GFP_NOFS);
	if (!sup)
		return FUNC1(-ENOMEM);

	err = FUNC4(c, sup, UBIFS_SB_NODE, UBIFS_SB_NODE_SZ,
			      UBIFS_SB_LNUM, 0);
	if (err) {
		FUNC2(sup);
		return FUNC1(err);
	}

	return sup;
}