#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct TYPE_3__ {scalar_t__ bitmap; int /*<<< orphan*/  nls_disk; int /*<<< orphan*/  nls_io; int /*<<< orphan*/  alt_mdb_bh; int /*<<< orphan*/  mdb_bh; int /*<<< orphan*/  cat_tree; int /*<<< orphan*/  ext_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct super_block *sb)
{
	if (!FUNC0(sb))
		return;
	/* free the B-trees */
	FUNC3(FUNC0(sb)->ext_tree);
	FUNC3(FUNC0(sb)->cat_tree);

	/* free the buffers holding the primary and alternate MDBs */
	FUNC1(FUNC0(sb)->mdb_bh);
	FUNC1(FUNC0(sb)->alt_mdb_bh);

	FUNC5(FUNC0(sb)->nls_io);
	FUNC5(FUNC0(sb)->nls_disk);

	FUNC2((unsigned long)FUNC0(sb)->bitmap, PAGE_SIZE < 8192 ? 1 : 0);
	FUNC4(FUNC0(sb));
	sb->s_fs_info = NULL;
}