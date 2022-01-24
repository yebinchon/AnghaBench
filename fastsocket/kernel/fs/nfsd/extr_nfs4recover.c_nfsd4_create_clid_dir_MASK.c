#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nfs4_client {char* cl_recdir; int cl_firststate; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct TYPE_7__ {TYPE_1__ f_path; } ;
struct TYPE_6__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ HEXDIR_LEN ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (char*,struct dentry*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct cred const*) ; 
 int FUNC10 (struct cred const**) ; 
 TYPE_3__* rec_file ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_2__*,struct dentry*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct nfs4_client *clp)
{
	const struct cred *original_cred;
	char *dname = clp->cl_recdir;
	struct dentry *dir, *dentry;
	int status;

	FUNC2("NFSD: nfsd4_create_clid_dir for \"%s\"\n", dname);

	if (!rec_file || clp->cl_firststate)
		return 0;

	status = FUNC10(&original_cred);
	if (status < 0)
		return status;

	status = FUNC6(rec_file->f_path.mnt);
	if (status)
		return status;

	dir = rec_file->f_path.dentry;
	/* lock the parent */
	FUNC7(&dir->d_inode->i_mutex);

	dentry = FUNC4(dname, dir, HEXDIR_LEN-1);
	if (FUNC0(dentry)) {
		status = FUNC1(dentry);
		goto out_unlock;
	}
	status = -EEXIST;
	if (dentry->d_inode) {
		FUNC2("NFSD: nfsd4_create_clid_dir: DIRECTORY EXISTS\n");
		goto out_put;
	}
	status = FUNC12(dir->d_inode, dentry, S_IRWXU);
out_put:
	FUNC3(dentry);
out_unlock:
	FUNC8(&dir->d_inode->i_mutex);
	if (status == 0) {
		clp->cl_firststate = 1;
		FUNC11(rec_file, rec_file->f_path.dentry, 0);
	}
	FUNC5(rec_file->f_path.mnt);
	FUNC9(original_cred);
	FUNC2("NFSD: nfsd4_create_clid_dir returns %d\n", status);
	return status;
}