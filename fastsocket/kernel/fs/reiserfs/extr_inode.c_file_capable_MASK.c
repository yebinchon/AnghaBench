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
struct inode {TYPE_1__* i_sb; } ;
typedef  int sector_t ;
struct TYPE_2__ {int s_blocksize_bits; } ;

/* Variables and functions */
 scalar_t__ KEY_FORMAT_3_5 ; 
 scalar_t__ FUNC0 (struct inode*) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, sector_t block)
{
	if (FUNC0(inode) != KEY_FORMAT_3_5 ||	// it is new file.
	    block < (1 << (31 - inode->i_sb->s_blocksize_bits)))	// old file, but 'block' is inside of 2gb
		return 1;

	return 0;
}