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
struct inode {int dummy; } ;
struct ext4_xattr_ibody_header {scalar_t__ h_magic; } ;
struct ext4_xattr_entry {int dummy; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int i_extra_isize; } ;

/* Variables and functions */
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  EXT4_XATTR_MAGIC ; 
 struct ext4_xattr_entry* FUNC1 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC2 (struct inode*,struct ext4_inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,unsigned int,struct ext4_inode*,int /*<<< orphan*/ *) ; 
 struct ext4_inode* FUNC5 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
				   unsigned int new_extra_isize,
				   struct ext4_iloc iloc,
				   handle_t *handle)
{
	struct ext4_inode *raw_inode;
	struct ext4_xattr_ibody_header *header;
	struct ext4_xattr_entry *entry;

	if (FUNC0(inode)->i_extra_isize >= new_extra_isize)
		return 0;

	raw_inode = FUNC5(&iloc);

	header = FUNC2(inode, raw_inode);
	entry = FUNC1(header);

	/* No extended attributes present */
	if (!FUNC6(inode, EXT4_STATE_XATTR) ||
	    header->h_magic != FUNC3(EXT4_XATTR_MAGIC)) {
		FUNC7((void *)raw_inode + EXT4_GOOD_OLD_INODE_SIZE, 0,
			new_extra_isize);
		FUNC0(inode)->i_extra_isize = new_extra_isize;
		return 0;
	}

	/* try to expand with EAs present */
	return FUNC4(inode, new_extra_isize,
					  raw_inode, handle);
}