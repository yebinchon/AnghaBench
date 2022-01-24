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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UBIFS_SB_LNUM ; 
 int /*<<< orphan*/  UBIFS_SB_NODE_SZ ; 
 int /*<<< orphan*/  UBI_LONGTERM ; 
 int FUNC1 (struct ubifs_info*,int /*<<< orphan*/ ,struct ubifs_sb_node*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*,struct ubifs_sb_node*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct ubifs_info *c, struct ubifs_sb_node *sup)
{
	int len = FUNC0(UBIFS_SB_NODE_SZ, c->min_io_size);

	FUNC2(c, sup, UBIFS_SB_NODE_SZ, 1);
	return FUNC1(c, UBIFS_SB_LNUM, sup, len, UBI_LONGTERM);
}