#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct ext3_dir_entry_2 {int dummy; } ;
struct dx_hash_info {scalar_t__ hash_version; int hash; scalar_t__ minor_hash; int /*<<< orphan*/  seed; } ;
struct dx_frame {int /*<<< orphan*/  at; TYPE_3__* bh; } ;
typedef  int __u32 ;
struct TYPE_10__ {int i_flags; } ;
struct TYPE_9__ {scalar_t__ s_def_hash_version; scalar_t__ s_hash_unsigned; int /*<<< orphan*/  s_hash_seed; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;
struct TYPE_6__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ DX_HASH_TEA ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 int EXT3_INDEX_FL ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_NB_ALWAYS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dx_frame* FUNC3 (int /*<<< orphan*/ *,struct inode*,struct dx_hash_info*,struct dx_frame*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct dx_frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ,struct dx_frame*,struct dx_frame*,int*) ; 
 int FUNC7 (struct file*,int,int /*<<< orphan*/ ,struct ext3_dir_entry_2*) ; 
 struct ext3_dir_entry_2* FUNC8 (struct ext3_dir_entry_2*) ; 
 int FUNC9 (struct file*,struct inode*,int,struct dx_hash_info*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 

int FUNC11(struct file *dir_file, __u32 start_hash,
			 __u32 start_minor_hash, __u32 *next_hash)
{
	struct dx_hash_info hinfo;
	struct ext3_dir_entry_2 *de;
	struct dx_frame frames[2], *frame;
	struct inode *dir;
	int block, err;
	int count = 0;
	int ret;
	__u32 hashval;

	FUNC5(FUNC10("In htree_fill_tree, start hash: %x:%x\n", start_hash,
		       start_minor_hash));
	dir = dir_file->f_path.dentry->d_inode;
	if (!(FUNC0(dir)->i_flags & EXT3_INDEX_FL)) {
		hinfo.hash_version = FUNC1(dir->i_sb)->s_def_hash_version;
		if (hinfo.hash_version <= DX_HASH_TEA)
			hinfo.hash_version +=
				FUNC1(dir->i_sb)->s_hash_unsigned;
		hinfo.seed = FUNC1(dir->i_sb)->s_hash_seed;
		count = FUNC9(dir_file, dir, 0, &hinfo,
					       start_hash, start_minor_hash);
		*next_hash = ~0;
		return count;
	}
	hinfo.hash = start_hash;
	hinfo.minor_hash = 0;
	frame = FUNC3(NULL, dir_file->f_path.dentry->d_inode, &hinfo, frames, &err);
	if (!frame)
		return err;

	/* Add '.' and '..' from the htree header */
	if (!start_hash && !start_minor_hash) {
		de = (struct ext3_dir_entry_2 *) frames[0].bh->b_data;
		if ((err = FUNC7(dir_file, 0, 0, de)) != 0)
			goto errout;
		count++;
	}
	if (start_hash < 2 || (start_hash ==2 && start_minor_hash==0)) {
		de = (struct ext3_dir_entry_2 *) frames[0].bh->b_data;
		de = FUNC8(de);
		if ((err = FUNC7(dir_file, 2, 0, de)) != 0)
			goto errout;
		count++;
	}

	while (1) {
		block = FUNC2(frame->at);
		ret = FUNC9(dir_file, dir, block, &hinfo,
					     start_hash, start_minor_hash);
		if (ret < 0) {
			err = ret;
			goto errout;
		}
		count += ret;
		hashval = ~0;
		ret = FUNC6(dir, HASH_NB_ALWAYS,
					    frame, frames, &hashval);
		*next_hash = hashval;
		if (ret < 0) {
			err = ret;
			goto errout;
		}
		/*
		 * Stop if:  (a) there are no more entries, or
		 * (b) we have inserted at least one entry and the
		 * next hash value is not a continuation
		 */
		if ((ret == 0) ||
		    (count && ((hashval & 1) == 0)))
			break;
	}
	FUNC4(frames);
	FUNC5(FUNC10("Fill tree: returned %d entries, next hash: %x\n",
		       count, *next_hash));
	return count;
errout:
	FUNC4(frames);
	return (err);
}