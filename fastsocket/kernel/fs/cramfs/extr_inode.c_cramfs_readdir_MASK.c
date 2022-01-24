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
struct super_block {int dummy; } ;
struct inode {unsigned int i_size; struct super_block* i_sb; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {unsigned int f_pos; TYPE_2__ f_path; } ;
struct cramfs_inode {int namelen; int mode; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int (* filldir_t ) (void*,char*,int,unsigned int,int /*<<< orphan*/ ,int) ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ CRAMFS_MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC0 (struct cramfs_inode*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct cramfs_inode* FUNC2 (struct super_block*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_mutex ; 

__attribute__((used)) static int FUNC8(struct file *filp, void *dirent, filldir_t filldir)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	char *buf;
	unsigned int offset;
	int copied;

	/* Offset within the thing. */
	offset = filp->f_pos;
	if (offset >= inode->i_size)
		return 0;
	/* Directory entries are always 4-byte aligned */
	if (offset & 3)
		return -EINVAL;

	buf = FUNC4(CRAMFS_MAXPATHLEN, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	copied = 0;
	while (offset < inode->i_size) {
		struct cramfs_inode *de;
		unsigned long nextoffset;
		char *name;
		ino_t ino;
		mode_t mode;
		int namelen, error;

		FUNC6(&read_mutex);
		de = FUNC2(sb, FUNC1(inode) + offset, sizeof(*de)+CRAMFS_MAXPATHLEN);
		name = (char *)(de+1);

		/*
		 * Namelengths on disk are shifted by two
		 * and the name padded out to 4-byte boundaries
		 * with zeroes.
		 */
		namelen = de->namelen << 2;
		FUNC5(buf, name, namelen);
		ino = FUNC0(de);
		mode = de->mode;
		FUNC7(&read_mutex);
		nextoffset = offset + sizeof(*de) + namelen;
		for (;;) {
			if (!namelen) {
				FUNC3(buf);
				return -EIO;
			}
			if (buf[namelen-1])
				break;
			namelen--;
		}
		error = filldir(dirent, buf, namelen, offset, ino, mode >> 12);
		if (error)
			break;

		offset = nextoffset;
		filp->f_pos = offset;
		copied++;
	}
	FUNC3(buf);
	return 0;
}