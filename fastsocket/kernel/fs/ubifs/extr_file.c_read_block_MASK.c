#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  sqnum; } ;
struct ubifs_data_node {int /*<<< orphan*/  compr_type; int /*<<< orphan*/  data; TYPE_2__ ch; int /*<<< orphan*/  size; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_1__* i_sb; } ;
struct TYPE_6__ {scalar_t__ creat_sqnum; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int UBIFS_BLOCK_SIZE ; 
 void* UBIFS_DATA_NODE_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*,union ubifs_key*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,struct ubifs_data_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,void*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct inode*) ; 
 int FUNC10 (struct ubifs_info*,union ubifs_key*,struct ubifs_data_node*) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, void *addr, unsigned int block,
		      struct ubifs_data_node *dn)
{
	struct ubifs_info *c = inode->i_sb->s_fs_info;
	int err, len, out_len;
	union ubifs_key key;
	unsigned int dlen;

	FUNC0(c, &key, inode->i_ino, block);
	err = FUNC10(c, &key, dn);
	if (err) {
		if (err == -ENOENT)
			/* Not found, so it must be a hole */
			FUNC5(addr, 0, UBIFS_BLOCK_SIZE);
		return err;
	}

	FUNC6(FUNC4(dn->ch.sqnum) >
		     FUNC9(inode)->creat_sqnum);
	len = FUNC3(dn->size);
	if (len <= 0 || len > UBIFS_BLOCK_SIZE)
		goto dump;

	dlen = FUNC3(dn->ch.len) - UBIFS_DATA_NODE_SZ;
	out_len = UBIFS_BLOCK_SIZE;
	err = FUNC7(&dn->data, dlen, addr, &out_len,
			       FUNC2(dn->compr_type));
	if (err || len != out_len)
		goto dump;

	/*
	 * Data length can be less than a full block, even for blocks that are
	 * not the last in the file (e.g., as a result of making a hole and
	 * appending data). Ensure that the remainder is zeroed out.
	 */
	if (len < UBIFS_BLOCK_SIZE)
		FUNC5(addr + len, 0, UBIFS_BLOCK_SIZE - len);

	return 0;

dump:
	FUNC8("bad data node (block %u, inode %lu)",
		  block, inode->i_ino);
	FUNC1(c, dn);
	return -EINVAL;
}