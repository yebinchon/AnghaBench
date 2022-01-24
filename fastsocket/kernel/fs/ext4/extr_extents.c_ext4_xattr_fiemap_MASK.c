#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_3__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct ext4_iloc {TYPE_1__* bh; } ;
typedef  int __u64 ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_8__ {int i_extra_isize; int i_file_acl; } ;
struct TYPE_7__ {int s_blocksize_bits; int s_blocksize; } ;
struct TYPE_6__ {int s_inode_size; } ;
struct TYPE_5__ {int b_blocknr; } ;

/* Variables and functions */
 int EXT4_GOOD_OLD_INODE_SIZE ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  FIEMAP_EXTENT_DATA_INLINE ; 
 int /*<<< orphan*/  FIEMAP_EXTENT_LAST ; 
 int FUNC2 (struct inode*,struct ext4_iloc*) ; 
 scalar_t__ FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fiemap_extent_info*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
				struct fiemap_extent_info *fieinfo)
{
	__u64 physical = 0;
	__u64 length;
	__u32 flags = FIEMAP_EXTENT_LAST;
	int blockbits = inode->i_sb->s_blocksize_bits;
	int error = 0;

	/* in-inode? */
	if (FUNC3(inode, EXT4_STATE_XATTR)) {
		struct ext4_iloc iloc;
		int offset;	/* offset of xattr in inode */

		error = FUNC2(inode, &iloc);
		if (error)
			return error;
		physical = iloc.bh->b_blocknr << blockbits;
		offset = EXT4_GOOD_OLD_INODE_SIZE +
				FUNC0(inode)->i_extra_isize;
		physical += offset;
		length = FUNC1(inode->i_sb)->s_inode_size - offset;
		flags |= FIEMAP_EXTENT_DATA_INLINE;
	} else { /* external block */
		physical = FUNC0(inode)->i_file_acl << blockbits;
		length = inode->i_sb->s_blocksize;
	}

	if (physical)
		error = FUNC4(fieinfo, 0, physical,
						length, flags);
	return (error < 0 ? error : 0);
}