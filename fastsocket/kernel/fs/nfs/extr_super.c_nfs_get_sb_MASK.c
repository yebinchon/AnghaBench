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
struct vfsmount {struct super_block* mnt_root; struct super_block* mnt_sb; } ;
struct super_block {int flags; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_flags; struct super_block* s_fs_info; } ;
struct nfs_server {int flags; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_flags; struct nfs_server* s_fs_info; } ;
struct nfs_sb_mountdata {int mntflags; struct super_block* server; } ;
struct nfs_parsed_mount_data {int version; int /*<<< orphan*/  lsm_opts; int /*<<< orphan*/ * fscache_uniq; } ;
struct nfs_fh {int dummy; } ;
struct file_system_type {int dummy; } ;
struct dentry {int flags; int /*<<< orphan*/  backing_dev_info; int /*<<< orphan*/  s_root; int /*<<< orphan*/  s_flags; struct dentry* s_fs_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  MS_ACTIVE ; 
 int MS_SYNCHRONOUS ; 
 int /*<<< orphan*/  NFS_DEFAULT_VERSION ; 
 int NFS_MOUNT_NOAC ; 
 int NFS_MOUNT_UNSHARED ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (int,char const*,struct nfs_parsed_mount_data*,struct vfsmount*) ; 
 struct nfs_fh* FUNC6 () ; 
 struct nfs_parsed_mount_data* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct super_block*) ; 
 int FUNC9 (struct super_block*,void*) ; 
 struct super_block* FUNC10 (struct nfs_parsed_mount_data*,struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct nfs_parsed_mount_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_fh*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_parsed_mount_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct super_block* FUNC16 (struct super_block*,struct nfs_fh*) ; 
 int /*<<< orphan*/  nfs_set_super ; 
 int FUNC17 (void*,struct nfs_parsed_mount_data*,struct nfs_fh*,char const*) ; 
 int FUNC18 (struct super_block*,int /*<<< orphan*/ *) ; 
 struct super_block* FUNC19 (struct file_system_type*,int (*) (struct super_block*,void*),int /*<<< orphan*/ ,struct nfs_sb_mountdata*) ; 

__attribute__((used)) static int FUNC20(struct file_system_type *fs_type,
	int flags, const char *dev_name, void *raw_data, struct vfsmount *mnt)
{
	struct nfs_server *server = NULL;
	struct super_block *s;
	struct nfs_parsed_mount_data *data;
	struct nfs_fh *mntfh;
	struct dentry *mntroot;
	int (*compare_super)(struct super_block *, void *) = nfs_compare_super;
	struct nfs_sb_mountdata sb_mntdata = {
		.mntflags = flags,
	};
	int error = -ENOMEM;

	data = FUNC7(NFS_DEFAULT_VERSION);
	mntfh = FUNC6();
	if (data == NULL || mntfh == NULL)
		goto out;

	/* Validate the mount data */
	error = FUNC17(raw_data, data, mntfh, dev_name);
	if (error < 0)
		goto out;

#ifdef CONFIG_NFS_V4
	if (data->version == 4) {
		error = nfs4_try_mount(flags, dev_name, data, mnt);
		goto out;
	}
#endif	/* CONFIG_NFS_V4 */

	/* Get a volume representation */
	server = FUNC10(data, mntfh);
	if (FUNC0(server)) {
		error = FUNC1(server);
		goto out;
	}
	sb_mntdata.server = server;

	if (server->flags & NFS_MOUNT_UNSHARED)
		compare_super = NULL;

	/* -o noac implies -o sync */
	if (server->flags & NFS_MOUNT_NOAC)
		sb_mntdata.mntflags |= MS_SYNCHRONOUS;

	/* Get a superblock - note that we may end up sharing one that already exists */
	s = FUNC19(fs_type, compare_super, nfs_set_super, &sb_mntdata);
	if (FUNC0(s)) {
		error = FUNC1(s);
		goto out_err_nosb;
	}

	if (s->s_fs_info != server) {
		FUNC14(server);
		server = NULL;
	} else {
		error = FUNC8(server);
		if (error)
			goto error_splat_bdi;
	}

	if (!s->s_root) {
		/* initial superblock/root creation */
		FUNC11(s, data);
		FUNC15(
			s, data ? data->fscache_uniq : NULL, NULL);
	}

	mntroot = FUNC16(s, mntfh);
	if (FUNC0(mntroot)) {
		error = FUNC1(mntroot);
		goto error_splat_super;
	}

	error = FUNC18(s, &data->lsm_opts);
	if (error)
		goto error_splat_root;

	s->s_flags |= MS_ACTIVE;
	mnt->mnt_sb = s;
	mnt->mnt_root = mntroot;
	error = 0;

out:
	FUNC13(data);
	FUNC12(mntfh);
	return error;

out_err_nosb:
	FUNC14(server);
	goto out;

error_splat_root:
	FUNC4(mntroot);
error_splat_super:
	if (server && !s->s_root)
		FUNC2(&server->backing_dev_info);
error_splat_bdi:
	FUNC3(s);
	goto out;
}