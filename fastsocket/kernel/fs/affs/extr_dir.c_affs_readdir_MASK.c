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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; scalar_t__ i_version; struct super_block* i_sb; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {int f_pos; scalar_t__ f_version; void* private_data; TYPE_1__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ (* filldir_t ) (void*,unsigned char*,int,int,int,int /*<<< orphan*/ ) ;
struct TYPE_10__ {int /*<<< orphan*/ * table; } ;
struct TYPE_9__ {int s_hashsize; } ;
struct TYPE_8__ {unsigned char* name; int /*<<< orphan*/  hash_chain; } ;
struct TYPE_7__ {struct inode* d_inode; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct buffer_head*) ; 
 TYPE_4__* FUNC1 (struct super_block*) ; 
 TYPE_3__* FUNC2 (struct super_block*,struct buffer_head*) ; 
 int /*<<< orphan*/  DT_DIR ; 
 int /*<<< orphan*/  DT_UNKNOWN ; 
 int EIO ; 
 struct buffer_head* FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 

__attribute__((used)) static int
FUNC13(struct file *filp, void *dirent, filldir_t filldir)
{
	struct inode		*inode = filp->f_path.dentry->d_inode;
	struct super_block	*sb = inode->i_sb;
	struct buffer_head	*dir_bh;
	struct buffer_head	*fh_bh;
	unsigned char		*name;
	int			 namelen;
	u32			 i;
	int			 hash_pos;
	int			 chain_pos;
	u32			 f_pos;
	u32			 ino;
	int			 stored;
	int			 res;

	FUNC12("AFFS: readdir(ino=%lu,f_pos=%lx)\n",inode->i_ino,(unsigned long)filp->f_pos);

	stored = 0;
	res    = -EIO;
	dir_bh = NULL;
	fh_bh  = NULL;
	f_pos  = filp->f_pos;

	if (f_pos == 0) {
		filp->private_data = (void *)0;
		if (filldir(dirent, ".", 1, f_pos, inode->i_ino, DT_DIR) < 0)
			return 0;
		filp->f_pos = f_pos = 1;
		stored++;
	}
	if (f_pos == 1) {
		if (filldir(dirent, "..", 2, f_pos, FUNC11(filp->f_path.dentry), DT_DIR) < 0)
			return stored;
		filp->f_pos = f_pos = 2;
		stored++;
	}

	FUNC6(inode);
	chain_pos = (f_pos - 2) & 0xffff;
	hash_pos  = (f_pos - 2) >> 16;
	if (chain_pos == 0xffff) {
		FUNC8(sb, "readdir", "More than 65535 entries in chain");
		chain_pos = 0;
		hash_pos++;
		filp->f_pos = ((hash_pos << 16) | chain_pos) + 2;
	}
	dir_bh = FUNC3(sb, inode->i_ino);
	if (!dir_bh)
		goto readdir_out;

	/* If the directory hasn't changed since the last call to readdir(),
	 * we can jump directly to where we left off.
	 */
	ino = (u32)(long)filp->private_data;
	if (ino && filp->f_version == inode->i_version) {
		FUNC12("AFFS: readdir() left off=%d\n", ino);
		goto inside;
	}

	ino = FUNC9(FUNC0(dir_bh)->table[hash_pos]);
	for (i = 0; ino && i < chain_pos; i++) {
		fh_bh = FUNC3(sb, ino);
		if (!fh_bh) {
			FUNC5(sb, "readdir","Cannot read block %d", i);
			goto readdir_out;
		}
		ino = FUNC9(FUNC2(sb, fh_bh)->hash_chain);
		FUNC4(fh_bh);
		fh_bh = NULL;
	}
	if (ino)
		goto inside;
	hash_pos++;

	for (; hash_pos < FUNC1(sb)->s_hashsize; hash_pos++) {
		ino = FUNC9(FUNC0(dir_bh)->table[hash_pos]);
		if (!ino)
			continue;
		f_pos = (hash_pos << 16) + 2;
inside:
		do {
			fh_bh = FUNC3(sb, ino);
			if (!fh_bh) {
				FUNC5(sb, "readdir","Cannot read block %d", ino);
				goto readdir_done;
			}

			namelen = FUNC10(FUNC2(sb, fh_bh)->name[0], (u8)30);
			name = FUNC2(sb, fh_bh)->name + 1;
			FUNC12("AFFS: readdir(): filldir(\"%.*s\", ino=%u), hash=%d, f_pos=%x\n",
				 namelen, name, ino, hash_pos, f_pos);
			if (filldir(dirent, name, namelen, f_pos, ino, DT_UNKNOWN) < 0)
				goto readdir_done;
			stored++;
			f_pos++;
			ino = FUNC9(FUNC2(sb, fh_bh)->hash_chain);
			FUNC4(fh_bh);
			fh_bh = NULL;
		} while (ino);
	}
readdir_done:
	filp->f_pos = f_pos;
	filp->f_version = inode->i_version;
	filp->private_data = (void *)(long)ino;
	res = stored;

readdir_out:
	FUNC4(dir_bh);
	FUNC4(fh_bh);
	FUNC7(inode);
	FUNC12("AFFS: readdir()=%d\n", stored);
	return res;
}