#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct nfs_open_dir_context {scalar_t__ dir_cookie; } ;
struct inode {int dummy; } ;
struct TYPE_14__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; int /*<<< orphan*/  f_mapping; struct nfs_open_dir_context* private_data; TYPE_1__ f_path; } ;
struct TYPE_17__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_4__ d_name; TYPE_3__* d_parent; struct inode* d_inode; } ;
struct TYPE_18__ {int plus; scalar_t__ eof; scalar_t__ page_index; scalar_t__* dir_cookie; int /*<<< orphan*/  decode; struct file* file; } ;
typedef  TYPE_5__ nfs_readdir_descriptor_t ;
typedef  int /*<<< orphan*/  filldir_t ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_16__ {TYPE_2__ d_name; } ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_12__ {int /*<<< orphan*/  decode_dirent; } ;

/* Variables and functions */
 int EBADCOOKIE ; 
 int ETOOSMALL ; 
 int /*<<< orphan*/  FILE ; 
 int /*<<< orphan*/  NFSIOS_VFSGETDENTS ; 
 TYPE_11__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_ADVISE_RDPLUS ; 
 TYPE_10__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int FUNC7 (TYPE_5__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 scalar_t__ FUNC11 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (TYPE_5__*) ; 
 int FUNC14 (TYPE_5__*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct file *filp, void *dirent, filldir_t filldir)
{
	struct dentry	*dentry = filp->f_path.dentry;
	struct inode	*inode = dentry->d_inode;
	nfs_readdir_descriptor_t my_desc,
			*desc = &my_desc;
	struct nfs_open_dir_context *dir_ctx = filp->private_data;
	int res = 0;

	FUNC3(FILE, "NFS: readdir(%s/%s) starting at cookie %llu\n",
			dentry->d_parent->d_name.name, dentry->d_name.name,
			(long long)filp->f_pos);
	FUNC8(inode, NFSIOS_VFSGETDENTS);

	/*
	 * filp->f_pos points to the dirent entry number.
	 * *desc->dir_cookie has the cookie for the next entry. We have
	 * to either find the entry with the appropriate number or
	 * revalidate the cookie.
	 */
	FUNC4(desc, 0, sizeof(*desc));

	desc->file = filp;
	desc->dir_cookie = &dir_ctx->dir_cookie;
	desc->decode = FUNC1(inode)->decode_dirent;
	desc->plus = FUNC11(inode, filp) ? 1 : 0;

	FUNC6(dentry);
	if (filp->f_pos == 0 || FUNC5(inode))
		res = FUNC9(inode, filp->f_mapping);
	if (res < 0)
		goto out;

	do {
		res = FUNC13(desc);

		if (res == -EBADCOOKIE) {
			res = 0;
			/* This means either end of directory */
			if (*desc->dir_cookie && desc->eof == 0) {
				/* Or that the server has 'lost' a cookie */
				res = FUNC14(desc, dirent, filldir);
				if (res == 0)
					continue;
			}
			break;
		}
		if (res == -ETOOSMALL && desc->plus) {
			FUNC2(NFS_INO_ADVISE_RDPLUS, &FUNC0(inode)->flags);
			FUNC12(inode);
			desc->page_index = 0;
			desc->plus = 0;
			desc->eof = 0;
			continue;
		}
		if (res < 0)
			break;

		res = FUNC7(desc, dirent, filldir);
		if (res < 0)
			break;
	} while (!desc->eof);
out:
	FUNC10(dentry);
	if (res > 0)
		res = 0;
	FUNC3(FILE, "NFS: readdir(%s/%s) returns %d\n",
			dentry->d_parent->d_name.name, dentry->d_name.name,
			res);
	return res;
}