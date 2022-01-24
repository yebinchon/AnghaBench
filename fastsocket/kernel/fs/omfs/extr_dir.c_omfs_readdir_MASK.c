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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int i_size; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct file {int f_pos; TYPE_1__* f_dentry; } ;
struct buffer_head {int /*<<< orphan*/ * b_data; } ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  (* filldir_t ) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int EINVAL ; 
 int OMFS_DIR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct file*,void*,int /*<<< orphan*/  (*) (void*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *filp, void *dirent, filldir_t filldir)
{
	struct inode *dir = filp->f_dentry->d_inode;
	struct buffer_head *bh;
	loff_t offset, res;
	unsigned int hchain, hindex;
	int nbuckets;
	u64 fsblock;
	int ret = -EINVAL;

	if (filp->f_pos >> 32)
		goto success;

	switch ((unsigned long) filp->f_pos) {
	case 0:
		if (filldir(dirent, ".", 1, 0, dir->i_ino, DT_DIR) < 0)
			goto success;
		filp->f_pos++;
		/* fall through */
	case 1:
		if (filldir(dirent, "..", 2, 1,
		    FUNC5(filp->f_dentry), DT_DIR) < 0)
			goto success;
		filp->f_pos = 1 << 20;
		/* fall through */
	}

	nbuckets = (dir->i_size - OMFS_DIR_START) / 8;

	/* high 12 bits store bucket + 1 and low 20 bits store hash index */
	hchain = (filp->f_pos >> 20) - 1;
	hindex = filp->f_pos & 0xfffff;

	bh = FUNC6(dir->i_sb, FUNC3(FUNC0(dir->i_sb), dir->i_ino));
	if (!bh)
		goto out;

	offset = OMFS_DIR_START + hchain * 8;

	for (; hchain < nbuckets; hchain++, offset += 8) {
		fsblock = FUNC1(*((__be64 *) &bh->b_data[offset]));

		res = FUNC4(filp, dirent, filldir, fsblock, hindex);
		hindex = 0;
		if (res < 0)
			break;

		filp->f_pos = (hchain+2) << 20;
	}
	FUNC2(bh);
success:
	ret = 0;
out:
	return ret;
}