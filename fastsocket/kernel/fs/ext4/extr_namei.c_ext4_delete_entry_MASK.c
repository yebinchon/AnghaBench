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
struct inode {int /*<<< orphan*/  i_version; TYPE_1__* i_sb; } ;
struct ext4_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {unsigned int s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ext4_dir_entry_2* FUNC4 (struct ext4_dir_entry_2*,unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC7(handle_t *handle,
			     struct inode *dir,
			     struct ext4_dir_entry_2 *de_del,
			     struct buffer_head *bh)
{
	struct ext4_dir_entry_2 *de, *pde;
	unsigned int blocksize = dir->i_sb->s_blocksize;
	int i;

	i = 0;
	pde = NULL;
	de = (struct ext4_dir_entry_2 *) bh->b_data;
	while (i < bh->b_size) {
		if (!FUNC1("ext4_delete_entry", dir, de, bh, i))
			return -EIO;
		if (de == de_del)  {
			FUNC0(bh, "get_write_access");
			FUNC3(handle, bh);
			if (pde)
				pde->rec_len = FUNC6(
					FUNC5(pde->rec_len,
							       blocksize) +
					FUNC5(de->rec_len,
							       blocksize),
					blocksize);
			else
				de->inode = 0;
			dir->i_version++;
			FUNC0(bh, "call ext4_handle_dirty_metadata");
			FUNC2(handle, dir, bh);
			return 0;
		}
		i += FUNC5(de->rec_len, blocksize);
		pde = de;
		de = FUNC4(de, blocksize);
	}
	return -ENOENT;
}