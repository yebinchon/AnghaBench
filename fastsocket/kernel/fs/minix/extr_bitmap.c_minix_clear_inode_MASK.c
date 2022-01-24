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
struct minix_inode {scalar_t__ i_mode; scalar_t__ i_nlinks; } ;
struct minix2_inode {scalar_t__ i_mode; scalar_t__ i_nlinks; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ MINIX_V1 ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct minix_inode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct minix2_inode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct buffer_head *bh = NULL;

	if (FUNC0(inode) == MINIX_V1) {
		struct minix_inode *raw_inode;
		raw_inode = FUNC3(inode->i_sb, inode->i_ino, &bh);
		if (raw_inode) {
			raw_inode->i_nlinks = 0;
			raw_inode->i_mode = 0;
		}
	} else {
		struct minix2_inode *raw_inode;
		raw_inode = FUNC4(inode->i_sb, inode->i_ino, &bh);
		if (raw_inode) {
			raw_inode->i_nlinks = 0;
			raw_inode->i_mode = 0;
		}
	}
	if (bh) {
		FUNC2(bh);
		FUNC1 (bh);
	}
}