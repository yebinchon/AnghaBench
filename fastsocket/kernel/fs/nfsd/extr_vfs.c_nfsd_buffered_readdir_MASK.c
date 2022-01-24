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
typedef  int /*<<< orphan*/  u64 ;
struct readdir_data {int used; void* dirent; scalar_t__ full; } ;
struct readdir_cd {scalar_t__ err; } ;
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct buffered_dirent {scalar_t__ namlen; int /*<<< orphan*/  d_type; int /*<<< orphan*/  ino; int /*<<< orphan*/  offset; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  scalar_t__ (* filldir_t ) (struct readdir_cd*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  scalar_t__ __be32 ;
struct TYPE_3__ {struct inode* d_inode; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  nfsd_buffered_filldir ; 
 scalar_t__ nfserr_eof ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct file*,int /*<<< orphan*/ ,struct readdir_data*) ; 

__attribute__((used)) static __be32 FUNC8(struct file *file, filldir_t func,
				    struct readdir_cd *cdp, loff_t *offsetp)
{
	struct readdir_data buf;
	struct buffered_dirent *de;
	int host_err;
	int size;
	loff_t offset;

	buf.dirent = (void *)FUNC1(GFP_KERNEL);
	if (!buf.dirent)
		return FUNC5(-ENOMEM);

	offset = *offsetp;

	while (1) {
		struct inode *dir_inode = file->f_path.dentry->d_inode;
		unsigned int reclen;

		cdp->err = nfserr_eof; /* will be cleared on successful read */
		buf.used = 0;
		buf.full = 0;

		host_err = FUNC7(file, nfsd_buffered_filldir, &buf);
		if (buf.full)
			host_err = 0;

		if (host_err < 0)
			break;

		size = buf.used;

		if (!size)
			break;

		/*
		 * Various filldir functions may end up calling back into
		 * lookup_one_len() and the file system's ->lookup() method.
		 * These expect i_mutex to be held, as it would within readdir.
		 */
		host_err = FUNC3(&dir_inode->i_mutex);
		if (host_err)
			break;

		de = (struct buffered_dirent *)buf.dirent;
		while (size > 0) {
			offset = de->offset;

			if (func(cdp, de->name, de->namlen, de->offset,
				 de->ino, de->d_type))
				break;

			if (cdp->err != nfs_ok)
				break;

			reclen = FUNC0(sizeof(*de) + de->namlen,
				       sizeof(u64));
			size -= reclen;
			de = (struct buffered_dirent *)((char *)de + reclen);
		}
		FUNC4(&dir_inode->i_mutex);
		if (size > 0) /* We bailed out early */
			break;

		offset = FUNC6(file, 0, SEEK_CUR);
	}

	FUNC2((unsigned long)(buf.dirent));

	if (host_err)
		return FUNC5(host_err);

	*offsetp = offset;
	return cdp->err;
}