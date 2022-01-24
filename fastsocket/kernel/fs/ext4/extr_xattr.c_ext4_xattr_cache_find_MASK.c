#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mb_cache_entry {scalar_t__ e_block; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_ino; } ;
struct ext4_xattr_header {int /*<<< orphan*/  h_hash; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ EXT4_XATTR_REFCOUNT_MAX ; 
 scalar_t__ FUNC1 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  ext4_xattr_cache ; 
 scalar_t__ FUNC6 (struct ext4_xattr_header*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct mb_cache_entry* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mb_cache_entry* FUNC9 (struct mb_cache_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct buffer_head* FUNC10 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static struct buffer_head *
FUNC11(struct inode *inode, struct ext4_xattr_header *header,
		      struct mb_cache_entry **pce)
{
	__u32 hash = FUNC7(header->h_hash);
	struct mb_cache_entry *ce;

	if (!header->h_hash)
		return NULL;  /* never share */
	FUNC4(inode, "looking for cached blocks [%x]", (int)hash);
again:
	ce = FUNC8(ext4_xattr_cache, 0,
				       inode->i_sb->s_bdev, hash);
	while (ce) {
		struct buffer_head *bh;

		if (FUNC1(ce)) {
			if (FUNC2(ce) == -EAGAIN)
				goto again;
			break;
		}
		bh = FUNC10(inode->i_sb, ce->e_block);
		if (!bh) {
			FUNC5(inode->i_sb,
				"inode %lu: block %lu read error",
				inode->i_ino, (unsigned long) ce->e_block);
		} else if (FUNC7(FUNC0(bh)->h_refcount) >=
				EXT4_XATTR_REFCOUNT_MAX) {
			FUNC4(inode, "block %lu refcount %d>=%d",
				  (unsigned long) ce->e_block,
				  FUNC7(FUNC0(bh)->h_refcount),
					  EXT4_XATTR_REFCOUNT_MAX);
		} else if (FUNC6(header, FUNC0(bh)) == 0) {
			*pce = ce;
			return bh;
		}
		FUNC3(bh);
		ce = FUNC9(ce, 0, inode->i_sb->s_bdev, hash);
	}
	return NULL;
}