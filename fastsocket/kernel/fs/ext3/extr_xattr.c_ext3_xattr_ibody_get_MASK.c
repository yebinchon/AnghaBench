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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext3_xattr_ibody_header {int dummy; } ;
struct ext3_xattr_entry {int /*<<< orphan*/  e_value_offs; int /*<<< orphan*/  e_value_size; } ;
struct ext3_inode {int dummy; } ;
struct ext3_iloc {int /*<<< orphan*/  bh; } ;
struct TYPE_4__ {int i_state; } ;
struct TYPE_3__ {int s_inode_size; } ;

/* Variables and functions */
 int ENODATA ; 
 int ERANGE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int EXT3_STATE_XATTR ; 
 struct ext3_xattr_entry* FUNC2 (struct ext3_xattr_ibody_header*) ; 
 struct ext3_xattr_ibody_header* FUNC3 (struct inode*,struct ext3_inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct ext3_iloc*) ; 
 struct ext3_inode* FUNC6 (struct ext3_iloc*) ; 
 int FUNC7 (struct ext3_xattr_entry*,void*) ; 
 int FUNC8 (struct ext3_xattr_entry**,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,size_t) ; 

__attribute__((used)) static int
FUNC12(struct inode *inode, int name_index, const char *name,
		     void *buffer, size_t buffer_size)
{
	struct ext3_xattr_ibody_header *header;
	struct ext3_xattr_entry *entry;
	struct ext3_inode *raw_inode;
	struct ext3_iloc iloc;
	size_t size;
	void *end;
	int error;

	if (!(FUNC0(inode)->i_state & EXT3_STATE_XATTR))
		return -ENODATA;
	error = FUNC5(inode, &iloc);
	if (error)
		return error;
	raw_inode = FUNC6(&iloc);
	header = FUNC3(inode, raw_inode);
	entry = FUNC2(header);
	end = (void *)raw_inode + FUNC1(inode->i_sb)->s_inode_size;
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
		FUNC11(buffer, (void *)FUNC2(header) +
		       FUNC9(entry->e_value_offs), size);
	}
	error = size;

cleanup:
	FUNC4(iloc.bh);
	return error;
}