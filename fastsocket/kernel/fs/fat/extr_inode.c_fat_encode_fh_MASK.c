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
typedef  int u32 ;
struct inode {int i_ino; int i_generation; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef  int __u32 ;
struct TYPE_4__ {int i_pos; int i_logstart; } ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct dentry *de, __u32 *fh, int *lenp, int connectable)
{
	int len = *lenp;
	struct inode *inode =  de->d_inode;
	u32 ipos_h, ipos_m, ipos_l;

	if (len < 5)
		return 255; /* no room */

	ipos_h = FUNC0(inode)->i_pos >> 8;
	ipos_m = (FUNC0(inode)->i_pos & 0xf0) << 24;
	ipos_l = (FUNC0(inode)->i_pos & 0x0f) << 28;
	*lenp = 5;
	fh[0] = inode->i_ino;
	fh[1] = inode->i_generation;
	fh[2] = ipos_h;
	fh[3] = ipos_m | FUNC0(inode)->i_logstart;
	FUNC1(&de->d_lock);
	fh[4] = ipos_l | FUNC0(de->d_parent->d_inode)->i_logstart;
	FUNC2(&de->d_lock);
	return 3;
}