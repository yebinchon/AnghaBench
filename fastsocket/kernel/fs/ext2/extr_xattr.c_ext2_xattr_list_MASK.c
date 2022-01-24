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
struct xattr_handler {size_t (* list ) (struct inode*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext2_xattr_entry {int /*<<< orphan*/  e_name_len; int /*<<< orphan*/  e_name; int /*<<< orphan*/  e_name_index; } ;
struct buffer_head {char* b_data; int b_size; int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  xattr_sem; int /*<<< orphan*/  i_file_acl; } ;
struct TYPE_3__ {scalar_t__ h_magic; scalar_t__ h_blocks; int /*<<< orphan*/  h_refcount; } ;

/* Variables and functions */
 int EIO ; 
 int ERANGE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int EXT2_XATTR_MAGIC ; 
 struct ext2_xattr_entry* FUNC1 (struct ext2_xattr_entry*) ; 
 struct ext2_xattr_entry* FUNC2 (struct buffer_head*) ; 
 TYPE_1__* FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2_xattr_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct buffer_head*) ; 
 struct xattr_handler* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC16 (struct inode*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct inode *inode, char *buffer, size_t buffer_size)
{
	struct buffer_head *bh = NULL;
	struct ext2_xattr_entry *entry;
	char *end;
	size_t rest = buffer_size;
	int error;

	FUNC10(inode, "buffer=%p, buffer_size=%ld",
		  buffer, (long)buffer_size);

	FUNC8(&FUNC0(inode)->xattr_sem);
	error = 0;
	if (!FUNC0(inode)->i_file_acl)
		goto cleanup;
	FUNC10(inode, "reading block %d", FUNC0(inode)->i_file_acl);
	bh = FUNC15(inode->i_sb, FUNC0(inode)->i_file_acl);
	error = -EIO;
	if (!bh)
		goto cleanup;
	FUNC9(bh, "b_count=%d, refcount=%d",
		FUNC5(&(bh->b_count)), FUNC14(FUNC3(bh)->h_refcount));
	end = bh->b_data + bh->b_size;
	if (FUNC3(bh)->h_magic != FUNC7(EXT2_XATTR_MAGIC) ||
	    FUNC3(bh)->h_blocks != FUNC7(1)) {
bad_block:	FUNC11(inode->i_sb, "ext2_xattr_list",
			"inode %ld: bad block %d", inode->i_ino,
			FUNC0(inode)->i_file_acl);
		error = -EIO;
		goto cleanup;
	}

	/* check the on-disk data structure */
	entry = FUNC2(bh);
	while (!FUNC4(entry)) {
		struct ext2_xattr_entry *next = FUNC1(entry);

		if ((char *)next >= end)
			goto bad_block;
		entry = next;
	}
	if (FUNC12(bh))
		FUNC10(inode, "cache insert failed");

	/* list the attribute names */
	for (entry = FUNC2(bh); !FUNC4(entry);
	     entry = FUNC1(entry)) {
		struct xattr_handler *handler =
			FUNC13(entry->e_name_index);

		if (handler) {
			size_t size = handler->list(inode, buffer, rest,
						    entry->e_name,
						    entry->e_name_len);
			if (buffer) {
				if (size > rest) {
					error = -ERANGE;
					goto cleanup;
				}
				buffer += size;
			}
			rest -= size;
		}
	}
	error = buffer_size - rest;  /* total size */

cleanup:
	FUNC6(bh);
	FUNC17(&FUNC0(inode)->xattr_sem);

	return error;
}