#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {TYPE_2__* mnt_sb; } ;
struct fid {int dummy; } ;
struct export_operations {struct dentry* (* fh_to_parent ) (TYPE_2__*,struct fid*,int,int) ;struct dentry* (* fh_to_dentry ) (TYPE_2__*,struct fid*,int,int) ;} ;
struct dentry {int d_flags; TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct export_operations* s_export_op; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int EACCES ; 
 struct dentry* FUNC0 (int) ; 
 int ESTALE ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int FUNC5 (struct vfsmount*,struct dentry*,char*,struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*,int (*) (void*,struct dentry*),void*) ; 
 struct dentry* FUNC7 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct vfsmount*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct dentry* FUNC12 (TYPE_2__*,struct fid*,int,int) ; 
 struct dentry* FUNC13 (TYPE_2__*,struct fid*,int,int) ; 

struct dentry *FUNC14(struct vfsmount *mnt, struct fid *fid,
		int fh_len, int fileid_type,
		int (*acceptable)(void *, struct dentry *), void *context)
{
	const struct export_operations *nop = mnt->mnt_sb->s_export_op;
	struct dentry *result, *alias;
	char nbuf[NAME_MAX+1];
	int err;

	/*
	 * Try to get any dentry for the given file handle from the filesystem.
	 */
	result = nop->fh_to_dentry(mnt->mnt_sb, fid, fh_len, fileid_type);
	if (!result)
		result = FUNC0(-ESTALE);
	if (FUNC1(result))
		return result;

	if (FUNC3(result->d_inode->i_mode)) {
		/*
		 * This request is for a directory.
		 *
		 * On the positive side there is only one dentry for each
		 * directory inode.  On the negative side this implies that we
		 * to ensure our dentry is connected all the way up to the
		 * filesystem root.
		 */
		if (result->d_flags & DCACHE_DISCONNECTED) {
			err = FUNC10(mnt, result, nbuf);
			if (err)
				goto err_result;
		}

		if (!acceptable(context, result)) {
			err = -EACCES;
			goto err_result;
		}

		return result;
	} else {
		/*
		 * It's not a directory.  Life is a little more complicated.
		 */
		struct dentry *target_dir, *nresult;

		/*
		 * See if either the dentry we just got from the filesystem
		 * or any alias for it is acceptable.  This is always true
		 * if this filesystem is exported without the subtreecheck
		 * option.  If the filesystem is exported with the subtree
		 * check option there's a fair chance we need to look at
		 * the parent directory in the file handle and make sure
		 * it's connected to the filesystem root.
		 */
		alias = FUNC6(result, acceptable, context);
		if (alias)
			return alias;

		/*
		 * Try to extract a dentry for the parent directory from the
		 * file handle.  If this fails we'll have to give up.
		 */
		err = -ESTALE;
		if (!nop->fh_to_parent)
			goto err_result;

		target_dir = nop->fh_to_parent(mnt->mnt_sb, fid,
				fh_len, fileid_type);
		if (!target_dir)
			goto err_result;
		err = FUNC2(target_dir);
		if (FUNC1(target_dir))
			goto err_result;

		/*
		 * And as usual we need to make sure the parent directory is
		 * connected to the filesystem root.  The VFS really doesn't
		 * like disconnected directories..
		 */
		err = FUNC10(mnt, target_dir, nbuf);
		if (err) {
			FUNC4(target_dir);
			goto err_result;
		}

		/*
		 * Now that we've got both a well-connected parent and a
		 * dentry for the inode we're after, make sure that our
		 * inode is actually connected to the parent.
		 */
		err = FUNC5(mnt, target_dir, nbuf, result);
		if (!err) {
			FUNC8(&target_dir->d_inode->i_mutex);
			nresult = FUNC7(nbuf, target_dir,
						 FUNC11(nbuf));
			FUNC9(&target_dir->d_inode->i_mutex);
			if (!FUNC1(nresult)) {
				if (nresult->d_inode) {
					FUNC4(result);
					result = nresult;
				} else
					FUNC4(nresult);
			}
		}

		/*
		 * At this point we are done with the parent, but it's pinned
		 * by the child dentry anyway.
		 */
		FUNC4(target_dir);

		/*
		 * And finally make sure the dentry is actually acceptable
		 * to NFSD.
		 */
		alias = FUNC6(result, acceptable, context);
		if (!alias) {
			err = -EACCES;
			goto err_result;
		}

		return alias;
	}

 err_result:
	FUNC4(result);
	return FUNC0(err);
}