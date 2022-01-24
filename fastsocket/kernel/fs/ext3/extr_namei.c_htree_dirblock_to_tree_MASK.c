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
struct inode {TYPE_1__* i_sb; } ;
struct file {int f_pos; } ;
struct ext3_dir_entry_2 {scalar_t__ inode; int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; } ;
struct dx_hash_info {scalar_t__ hash; scalar_t__ minor_hash; } ;
struct buffer_head {char* b_data; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct inode*,struct ext3_dir_entry_2*,struct buffer_head*,int) ; 
 int FUNC6 (struct file*,scalar_t__,scalar_t__,struct ext3_dir_entry_2*) ; 
 struct ext3_dir_entry_2* FUNC7 (struct ext3_dir_entry_2*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dx_hash_info*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 

__attribute__((used)) static int FUNC10(struct file *dir_file,
				  struct inode *dir, int block,
				  struct dx_hash_info *hinfo,
				  __u32 start_hash, __u32 start_minor_hash)
{
	struct buffer_head *bh;
	struct ext3_dir_entry_2 *de, *top;
	int err, count = 0;

	FUNC3(FUNC9("In htree dirblock_to_tree: block %d\n", block));
	if (!(bh = FUNC4 (NULL, dir, block, 0, &err)))
		return err;

	de = (struct ext3_dir_entry_2 *) bh->b_data;
	top = (struct ext3_dir_entry_2 *) ((char *) de +
					   dir->i_sb->s_blocksize -
					   FUNC1(0));
	for (; de < top; de = FUNC7(de)) {
		if (!FUNC5("htree_dirblock_to_tree", dir, de, bh,
					(block<<FUNC0(dir->i_sb))
						+((char *)de - bh->b_data))) {
			/* On error, skip the f_pos to the next block. */
			dir_file->f_pos = (dir_file->f_pos |
					(dir->i_sb->s_blocksize - 1)) + 1;
			FUNC2 (bh);
			return count;
		}
		FUNC8(de->name, de->name_len, hinfo);
		if ((hinfo->hash < start_hash) ||
		    ((hinfo->hash == start_hash) &&
		     (hinfo->minor_hash < start_minor_hash)))
			continue;
		if (de->inode == 0)
			continue;
		if ((err = FUNC6(dir_file,
				   hinfo->hash, hinfo->minor_hash, de)) != 0) {
			FUNC2(bh);
			return err;
		}
		count++;
	}
	FUNC2(bh);
	return count;
}