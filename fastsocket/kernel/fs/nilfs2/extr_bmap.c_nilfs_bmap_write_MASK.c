#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nilfs_inode {int /*<<< orphan*/  i_bmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  u_data; } ;
struct nilfs_bmap {int /*<<< orphan*/  b_sem; int /*<<< orphan*/  b_last_allocated_ptr; TYPE_2__* b_inode; TYPE_1__ b_u; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {scalar_t__ i_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  NILFS_BMAP_NEW_PTR_INIT ; 
 scalar_t__ NILFS_DAT_INO ; 
 int NILFS_INODE_BMAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nilfs_bmap *bmap, struct nilfs_inode *raw_inode)
{
	FUNC0(&bmap->b_sem);
	FUNC1(raw_inode->i_bmap, bmap->b_u.u_data,
	       NILFS_INODE_BMAP_SIZE * sizeof(__le64));
	if (bmap->b_inode->i_ino == NILFS_DAT_INO)
		bmap->b_last_allocated_ptr = NILFS_BMAP_NEW_PTR_INIT;

	FUNC2(&bmap->b_sem);
}