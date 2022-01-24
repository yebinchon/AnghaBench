#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_blocks; } ;
typedef  int s64 ;
struct TYPE_4__ {int sb_bsize; } ;
struct TYPE_5__ {TYPE_1__ sd_sb; } ;

/* Variables and functions */
 int GFS2_BASIC_BLOCK ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static inline void FUNC2(struct inode *inode, s64 change)
{
	FUNC1(FUNC0(inode), (change >= 0 || inode->i_blocks > -change));
	change *= (FUNC0(inode)->sd_sb.sb_bsize/GFS2_BASIC_BLOCK);
	inode->i_blocks += change;
}