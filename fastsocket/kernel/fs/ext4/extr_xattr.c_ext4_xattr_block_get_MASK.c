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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  h_refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_file_acl; } ;

/* Variables and functions */
 struct ext4_xattr_entry* FUNC0 (struct buffer_head*) ; 
 TYPE_2__* FUNC1 (struct buffer_head*) ; 
 int EIO ; 
 int ENODATA ; 
 int ERANGE ; 
 TYPE_1__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*,char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 int FUNC10 (struct ext4_xattr_entry**,int,char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 size_t FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*,scalar_t__,size_t) ; 
 struct buffer_head* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct inode *inode, int name_index, const char *name,
		     void *buffer, size_t buffer_size)
{
	struct buffer_head *bh = NULL;
	struct ext4_xattr_entry *entry;
	size_t size;
	int error;

	FUNC6(inode, "name=%d.%s, buffer=%p, buffer_size=%ld",
		  name_index, name, buffer, (long)buffer_size);

	error = -ENODATA;
	if (!FUNC2(inode)->i_file_acl)
		goto cleanup;
	FUNC6(inode, "reading block %u", FUNC2(inode)->i_file_acl);
	bh = FUNC14(inode->i_sb, FUNC2(inode)->i_file_acl);
	if (!bh)
		goto cleanup;
	FUNC5(bh, "b_count=%d, refcount=%d",
		FUNC3(&(bh->b_count)), FUNC12(FUNC1(bh)->h_refcount));
	if (FUNC9(bh)) {
bad_block:
		FUNC7(inode->i_sb,
			   "inode %lu: bad block %llu", inode->i_ino,
			   FUNC2(inode)->i_file_acl);
		error = -EIO;
		goto cleanup;
	}
	FUNC8(bh);
	entry = FUNC0(bh);
	error = FUNC10(&entry, name_index, name, bh->b_size, 1);
	if (error == -EIO)
		goto bad_block;
	if (error)
		goto cleanup;
	size = FUNC12(entry->e_value_size);
	if (buffer) {
		error = -ERANGE;
		if (size > buffer_size)
			goto cleanup;
		FUNC13(buffer, bh->b_data + FUNC11(entry->e_value_offs),
		       size);
	}
	error = size;

cleanup:
	FUNC4(bh);
	return error;
}