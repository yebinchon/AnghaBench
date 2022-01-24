#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct reiserfs_key {int dummy; } ;
struct reiserfs_dir_entry {int de_entry_num; int de_item_num; struct item_head* de_ih; struct buffer_head* de_bh; } ;
struct reiserfs_de_head {int dummy; } ;
struct item_head {struct reiserfs_key const ih_key; } ;
struct inode {TYPE_1__* i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {char* b_data; int b_size; } ;
typedef  void* off_t ;
typedef  void* loff_t ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  scalar_t__ (* filldir_t ) (void*,char*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_14__ {int /*<<< orphan*/  reada; } ;
struct TYPE_13__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 struct reiserfs_de_head* FUNC0 (struct buffer_head*,struct item_head*) ; 
 char* FUNC1 (struct buffer_head*,struct item_head*,struct reiserfs_de_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct reiserfs_key const*,struct cpu_key*) ; 
 int /*<<< orphan*/  DOT_OFFSET ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 int IO_ERROR ; 
 int FUNC5 (struct item_head*) ; 
 int /*<<< orphan*/  KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  MIN_KEY ; 
 int /*<<< orphan*/  PATH_READA ; 
 int POSITION_FOUND ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  FUNC8 (struct reiserfs_key const*,int /*<<< orphan*/ *) ; 
 void* FUNC9 (struct cpu_key*) ; 
 int /*<<< orphan*/  FUNC10 (struct reiserfs_de_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_de_head*) ; 
 void* FUNC12 (struct reiserfs_de_head*) ; 
 int FUNC13 (struct buffer_head*,struct item_head*,int) ; 
 struct reiserfs_key* FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC15 (struct dentry*,struct reiserfs_de_head*) ; 
 scalar_t__ FUNC16 (struct item_head*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (int,int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ,struct reiserfs_key const*) ; 
 int /*<<< orphan*/  FUNC20 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 TYPE_2__ path_to_entry ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int FUNC27 (TYPE_1__*,struct cpu_key*,TYPE_2__*,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC28 (struct cpu_key*,void*) ; 
 int /*<<< orphan*/  FUNC29 (struct item_head*,struct item_head*) ; 
 int FUNC30 (char*) ; 

int FUNC31(struct dentry *dentry, void *dirent,
			   filldir_t filldir, loff_t *pos)
{
	struct inode *inode = dentry->d_inode;
	struct cpu_key pos_key;	/* key of current position in the directory (key of directory entry) */
	FUNC4(path_to_entry);
	struct buffer_head *bh;
	int item_num, entry_num;
	const struct reiserfs_key *rkey;
	struct item_head *ih, tmp_ih;
	int search_res;
	char *local_buf;
	loff_t next_pos;
	char small_buf[32];	/* avoid kmalloc if we can */
	struct reiserfs_dir_entry de;
	int ret = 0;

	FUNC25(inode->i_sb);

	FUNC23(inode->i_sb, "readdir");

	/* form key for search the next directory entry using f_pos field of
	   file structure */
	FUNC20(&pos_key, inode, *pos ?: DOT_OFFSET, TYPE_DIRENTRY, 3);
	next_pos = FUNC9(&pos_key);

	path_to_entry.reada = PATH_READA;
	while (1) {
	      research:
		/* search the directory item, containing entry with specified key */
		search_res =
		    FUNC27(inode->i_sb, &pos_key, &path_to_entry,
					&de);
		if (search_res == IO_ERROR) {
			// FIXME: we could just skip part of directory which could
			// not be read
			ret = -EIO;
			goto out;
		}
		entry_num = de.de_entry_num;
		bh = de.de_bh;
		item_num = de.de_item_num;
		ih = de.de_ih;
		FUNC29(&tmp_ih, ih);

		/* we must have found item, that is item of this directory, */
		FUNC7(FUNC3(&(ih->ih_key), &pos_key),
		       "vs-9000: found item %h does not match to dir we readdir %K",
		       ih, &pos_key);
		FUNC7(item_num > FUNC2(bh) - 1,
		       "vs-9005 item_num == %d, item amount == %d",
		       item_num, FUNC2(bh));

		/* and entry must be not more than number of entries in the item */
		FUNC7(FUNC5(ih) < entry_num,
		       "vs-9010: entry number is too big %d (%d)",
		       entry_num, FUNC5(ih));

		if (search_res == POSITION_FOUND
		    || entry_num < FUNC5(ih)) {
			/* go through all entries in the directory item beginning from the entry, that has been found */
			struct reiserfs_de_head *deh =
			    FUNC0(bh, ih) + entry_num;

			for (; entry_num < FUNC5(ih);
			     entry_num++, deh++) {
				int d_reclen;
				char *d_name;
				off_t d_off;
				ino_t d_ino;

				if (!FUNC10(deh))
					/* it is hidden entry */
					continue;
				d_reclen = FUNC13(bh, ih, entry_num);
				d_name = FUNC1(bh, ih, deh);

				if (d_reclen <= 0 ||
				    d_name + d_reclen > bh->b_data + bh->b_size) {
					/* There is corrupted data in entry,
					 * We'd better stop here */
					FUNC22(&path_to_entry);
					ret = -EIO;
					goto out;
				}

				if (!d_name[d_reclen - 1])
					d_reclen = FUNC30(d_name);

				if (d_reclen >
				    FUNC6(inode->i_sb->
						      s_blocksize)) {
					/* too big to send back to VFS */
					continue;
				}

				/* Ignore the .reiserfs_priv entry */
				if (FUNC15(dentry, deh))
					continue;

				d_off = FUNC12(deh);
				*pos = d_off;
				d_ino = FUNC11(deh);
				if (d_reclen <= 32) {
					local_buf = small_buf;
				} else {
					local_buf = FUNC18(d_reclen,
							    GFP_NOFS);
					if (!local_buf) {
						FUNC22(&path_to_entry);
						ret = -ENOMEM;
						goto out;
					}
					if (FUNC16(&tmp_ih, &path_to_entry)) {
						FUNC17(local_buf);
						goto research;
					}
				}
				// Note, that we copy name to user space via temporary
				// buffer (local_buf) because filldir will block if
				// user space buffer is swapped out. At that time
				// entry can move to somewhere else
				FUNC21(local_buf, d_name, d_reclen);
				if (filldir
				    (dirent, local_buf, d_reclen, d_off, d_ino,
				     DT_UNKNOWN) < 0) {
					if (local_buf != small_buf) {
						FUNC17(local_buf);
					}
					goto end;
				}
				if (local_buf != small_buf) {
					FUNC17(local_buf);
				}
				// next entry should be looked for with such offset
				next_pos = FUNC12(deh) + 1;

				if (FUNC16(&tmp_ih, &path_to_entry)) {
					goto research;
				}
			}	/* for */
		}

		if (item_num != FUNC2(bh) - 1)
			// end of directory has been reached
			goto end;

		/* item we went through is last item of node. Using right
		   delimiting key check is it directory end */
		rkey = FUNC14(&path_to_entry, inode->i_sb);
		if (!FUNC8(rkey, &MIN_KEY)) {
			/* set pos_key to key, that is the smallest and greater
			   that key of the last entry in the item */
			FUNC28(&pos_key, next_pos);
			continue;
		}

		if (FUNC3(rkey, &pos_key)) {
			// end of directory has been reached
			goto end;
		}

		/* directory continues in the right neighboring block */
		FUNC28(&pos_key,
				     FUNC19(KEY_FORMAT_3_5, rkey));

	}			/* while */

end:
	*pos = next_pos;
	FUNC22(&path_to_entry);
	FUNC24(&path_to_entry);
out:
	FUNC26(inode->i_sb);
	return ret;
}