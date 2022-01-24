#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int /*<<< orphan*/  i_version; } ;
struct ext3_dir_entry_2 {int /*<<< orphan*/  rec_len; scalar_t__ inode; } ;
struct buffer_head {int b_size; scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EIO ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 struct ext3_dir_entry_2* FUNC4 (struct ext3_dir_entry_2*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7 (handle_t *handle,
			      struct inode * dir,
			      struct ext3_dir_entry_2 * de_del,
			      struct buffer_head * bh)
{
	struct ext3_dir_entry_2 * de, * pde;
	int i;

	i = 0;
	pde = NULL;
	de = (struct ext3_dir_entry_2 *) bh->b_data;
	while (i < bh->b_size) {
		if (!FUNC1("ext3_delete_entry", dir, de, bh, i))
			return -EIO;
		if (de == de_del)  {
			FUNC0(bh, "get_write_access");
			FUNC3(handle, bh);
			if (pde)
				pde->rec_len = FUNC6(
					FUNC5(pde->rec_len) +
					FUNC5(de->rec_len));
			else
				de->inode = 0;
			dir->i_version++;
			FUNC0(bh, "call ext3_journal_dirty_metadata");
			FUNC2(handle, bh);
			return 0;
		}
		i += FUNC5(de->rec_len);
		pde = de;
		de = FUNC4(de);
	}
	return -ENOENT;
}