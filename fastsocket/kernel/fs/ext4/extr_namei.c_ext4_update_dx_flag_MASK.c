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
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_FEATURE_COMPAT_DIR_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_INODE_INDEX ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct inode *inode)
{
	if (!FUNC0(inode->i_sb,
				     EXT4_FEATURE_COMPAT_DIR_INDEX))
		FUNC1(inode, EXT4_INODE_INDEX);
}