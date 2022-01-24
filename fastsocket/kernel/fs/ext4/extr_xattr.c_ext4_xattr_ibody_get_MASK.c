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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct TYPE_2__ {int s_inode_size; } ;

/* Variables and functions */
 int ENODATA ; 
 int ERANGE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 struct ext4_xattr_entry* FUNC1 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC2 (struct inode*,struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct ext4_iloc*) ; 
 struct ext4_inode* FUNC5 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ext4_xattr_entry*,void*) ; 
 int FUNC8 (struct ext4_xattr_entry**,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,size_t) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, int name_index, const char *name,
		     void *buffer, size_t buffer_size)
{
	struct ext4_xattr_ibody_header *header;
	struct ext4_xattr_entry *entry;
	struct ext4_inode *raw_inode;
	struct ext4_iloc iloc;
	size_t size;
	void *end;
	int error;

	if (!FUNC6(inode, EXT4_STATE_XATTR))
		return -ENODATA;
	error = FUNC4(inode, &iloc);
	if (error)
		return error;
	raw_inode = FUNC5(&iloc);
	header = FUNC2(inode, raw_inode);
	entry = FUNC1(header);
	end = (void *)raw_inode + FUNC0(inode->i_sb)->s_inode_size;
	error = FUNC7(entry, end);
	if (error)
		goto cleanup;
	error = FUNC8(&entry, name_index, name,
				      end - (void *)entry, 0);
	if (error)
		goto cleanup;
	size = FUNC10(entry->e_value_size);
	if (buffer) {
		error = -ERANGE;
		if (size > buffer_size)
			goto cleanup;
		FUNC11(buffer, (void *)FUNC1(header) +
		       FUNC9(entry->e_value_offs), size);
	}
	error = size;

cleanup:
	FUNC3(iloc.bh);
	return error;
}