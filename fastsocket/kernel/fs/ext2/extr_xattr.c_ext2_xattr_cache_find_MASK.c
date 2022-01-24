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
struct ext2_xattr_header {int /*<<< orphan*/  h_hash; } ;
struct buffer_head {int /*<<< orphan*/  b_count; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 scalar_t__ EXT2_XATTR_REFCOUNT_MAX ; 
 TYPE_2__* FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct mb_cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  ext2_xattr_cache ; 
 int /*<<< orphan*/  FUNC8 (struct ext2_xattr_header*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 struct mb_cache_entry* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct mb_cache_entry* FUNC12 (struct mb_cache_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct mb_cache_entry*) ; 
 struct buffer_head* FUNC14 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *
FUNC16(struct inode *inode, struct ext2_xattr_header *header)
{
	__u32 hash = FUNC9(header->h_hash);
	struct mb_cache_entry *ce;

	if (!header->h_hash)
		return NULL;  /* never share */
	FUNC6(inode, "looking for cached blocks [%x]", (int)hash);
again:
	ce = FUNC11(ext2_xattr_cache, 0,
				       inode->i_sb->s_bdev, hash);
	while (ce) {
		struct buffer_head *bh;

		if (FUNC1(ce)) {
			if (FUNC2(ce) == -EAGAIN)
				goto again;
			break;
		}

		bh = FUNC14(inode->i_sb, ce->e_block);
		if (!bh) {
			FUNC7(inode->i_sb, "ext2_xattr_cache_find",
				"inode %ld: block %ld read error",
				inode->i_ino, (unsigned long) ce->e_block);
		} else {
			FUNC10(bh);
			if (FUNC9(FUNC0(bh)->h_refcount) >
				   EXT2_XATTR_REFCOUNT_MAX) {
				FUNC6(inode, "block %ld refcount %d>%d",
					  (unsigned long) ce->e_block,
					  FUNC9(FUNC0(bh)->h_refcount),
					  EXT2_XATTR_REFCOUNT_MAX);
			} else if (!FUNC8(header, FUNC0(bh))) {
				FUNC5(bh, "b_count=%d",
					  FUNC3(&(bh->b_count)));
				FUNC13(ce);
				return bh;
			}
			FUNC15(bh);
			FUNC4(bh);
		}
		ce = FUNC12(ce, 0, inode->i_sb->s_bdev, hash);
	}
	return NULL;
}