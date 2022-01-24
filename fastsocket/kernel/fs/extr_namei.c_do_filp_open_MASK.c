#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct path {scalar_t__ mnt; struct file* dentry; } ;
struct TYPE_10__ {size_t len; scalar_t__* name; } ;
struct TYPE_14__ {scalar_t__ mnt; struct file* dentry; } ;
struct TYPE_11__ {int flags; int create_mode; struct file* file; } ;
struct TYPE_12__ {TYPE_3__ open; } ;
struct nameidata {scalar_t__ last_type; int flags; TYPE_2__ last; TYPE_6__ path; TYPE_6__ root; TYPE_4__ intent; } ;
struct filename {char* name; } ;
struct file {int f_flags; TYPE_5__* d_inode; } ;
struct dentry {int f_flags; TYPE_5__* d_inode; } ;
struct TYPE_13__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; TYPE_1__* i_op; } ;
struct TYPE_9__ {scalar_t__ follow_link; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EEXIST ; 
 int EISDIR ; 
 int ELOOP ; 
 int ENFILE ; 
 int ENOENT ; 
 int EROFS ; 
 struct file* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct file*) ; 
 scalar_t__ LAST_BIND ; 
 scalar_t__ LAST_NORM ; 
 int LOOKUP_CREATE ; 
 int LOOKUP_EXCL ; 
 int LOOKUP_OPEN ; 
 int LOOKUP_PARENT ; 
 int MAY_APPEND ; 
 int MAY_OPEN ; 
 int MAY_WRITE ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NOFOLLOW ; 
 int O_TRUNC ; 
 int FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct path*,struct nameidata*) ; 
 int FUNC6 (struct nameidata*,struct path*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct filename*,struct file*,int) ; 
 int FUNC10 (int,struct filename*,int,struct nameidata*) ; 
 int FUNC11 (struct path*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct file*) ; 
 struct file* FUNC13 () ; 
 int FUNC14 (struct file*) ; 
 int FUNC15 (struct file*,int) ; 
 int FUNC16 (int) ; 
 void* FUNC17 (struct nameidata*) ; 
 int FUNC18 (TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct file* FUNC23 (struct nameidata*) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int,TYPE_5__*) ; 
 int FUNC26 (int,char const*,int,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC28 (struct path*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC29 (struct path*,struct nameidata*) ; 
 int FUNC30 (struct filename*,struct nameidata*) ; 
 int /*<<< orphan*/  FUNC31 (struct nameidata*) ; 
 int FUNC32 (struct file*,struct nameidata*) ; 
 scalar_t__ FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_5__*) ; 

struct file *FUNC35(int dfd, struct filename *filename,
		int open_flag, int mode, int acc_mode)
{
	struct file *filp;
	struct nameidata nd;
	int error;
	struct path path;
	struct dentry *dir;
	int count = 0;
	int will_truncate;
	int flag = FUNC24(open_flag);
	int got_write = false;
	const char *pathname = filename->name;

	if (!acc_mode)
		acc_mode = MAY_OPEN | FUNC0(flag);

	/* O_TRUNC implies we need access checks for write permissions */
	if (flag & O_TRUNC)
		acc_mode |= MAY_WRITE;

	/* Allow the LSM permission hook to distinguish append 
	   access from general write access. */
	if (flag & O_APPEND)
		acc_mode |= MAY_APPEND;

	/*
	 * The simplest case - just a plain lookup.
	 */
	if (!(flag & O_CREAT)) {
		filp = FUNC13();

		if (filp == NULL)
			return FUNC1(-ENFILE);
		nd.intent.open.file = filp;
		filp->f_flags = open_flag;
		nd.intent.open.flags = flag;
		nd.intent.open.create_mode = 0;
		error = FUNC10(dfd, filename,
					FUNC16(flag)|LOOKUP_OPEN, &nd);
		if (FUNC2(nd.intent.open.file)) {
			if (error == 0) {
				error = FUNC3(nd.intent.open.file);
				FUNC27(&nd.path);
			}
		} else if (error)
			FUNC31(&nd);
		if (error)
			return FUNC1(error);
		goto ok;
	}

	/*
	 * Create - we need to know the parent.
	 */
	error = FUNC26(dfd, pathname, LOOKUP_PARENT, &nd);
	if (error)
		return FUNC1(error);
	error = FUNC30(filename, &nd);
	if (error) {
		if (nd.root.mnt)
			FUNC27(&nd.root);
		return FUNC1(error);
	}
	if (FUNC33(!FUNC8()))
		FUNC9(filename, nd.path.dentry, LOOKUP_PARENT);

	/*
	 * We have the parent and last component. First of all, check
	 * that we are not asked to creat(2) an obvious directory - that
	 * will not do.
	 */
	error = -EISDIR;
	if (nd.last_type != LAST_NORM || nd.last.name[nd.last.len])
		goto exit_parent;

	error = -ENFILE;
	filp = FUNC13();
	if (filp == NULL)
		goto exit_parent;
	nd.intent.open.file = filp;
	filp->f_flags = open_flag;
	nd.intent.open.flags = flag;
	nd.intent.open.create_mode = mode;
	dir = nd.path.dentry;
	nd.flags &= ~LOOKUP_PARENT;
	nd.flags |= LOOKUP_CREATE | LOOKUP_OPEN;
	if (flag & O_EXCL)
		nd.flags |= LOOKUP_EXCL;

	/*
	 * This write is needed to ensure that a
	 * ro->rw transition does not occur between
	 * the time when the file is created and when
	 * a permanent write count is taken through
	 * the 'struct file' in nameidata_to_filp().
	 */
	error = FUNC20(nd.path.mnt);
	if (!error)
		got_write = true;

	FUNC21(&dir->d_inode->i_mutex);
	path.dentry = FUNC17(&nd);
	path.mnt = nd.path.mnt;

do_last:
	error = FUNC3(path.dentry);
	if (FUNC2(path.dentry)) {
		FUNC22(&dir->d_inode->i_mutex);
		if (got_write)
			FUNC19(nd.path.mnt);
		goto exit;
	}

	if (FUNC2(nd.intent.open.file)) {
		error = FUNC3(nd.intent.open.file);
		goto exit_mutex_unlock;
	}

	/* Negative dentry, just create the file */
	if (!path.dentry->d_inode) {
		if (!got_write) {
			error = -EROFS;
			goto exit_mutex_unlock;
		}
		error = FUNC6(&nd, &path, open_flag, mode);
		if (error) {
			FUNC19(nd.path.mnt);
			goto exit;
		}
		filp = FUNC23(&nd);
		FUNC19(nd.path.mnt);
		if (nd.root.mnt)
			FUNC27(&nd.root);
		if (!FUNC2(filp)) {
			error = FUNC15(filp, acc_mode);
			if (error) {
				FUNC12(filp);
				filp = FUNC1(error);
			}
		}
		return filp;
	}

	/*
	 * It already exists.
	 */
	FUNC22(&dir->d_inode->i_mutex);
	if (got_write) {
		FUNC19(nd.path.mnt);
		got_write = false;
	}
	FUNC9(filename, path.dentry, 0);

	error = -EEXIST;
	if (flag & O_EXCL)
		goto exit_dput;

	error = FUNC11(&path, nd.flags);
	if (error < 0)
		goto exit_dput;
 

	error = -ENOENT;
	if (!path.dentry->d_inode)
		goto exit_dput;
	if (path.dentry->d_inode->i_op->follow_link)
		goto do_link;

	FUNC29(&path, &nd);
	error = -EISDIR;
	if (path.dentry->d_inode && FUNC4(path.dentry->d_inode->i_mode))
		goto exit;
ok:
	/*
	 * Consider:
	 * 1. may_open() truncates a file
	 * 2. a rw->ro mount transition occurs
	 * 3. nameidata_to_filp() fails due to
	 *    the ro mount.
	 * That would be inconsistent, and should
	 * be avoided. Taking this mnt write here
	 * ensures that (2) can not occur.
	 */
	will_truncate = FUNC25(flag, nd.path.dentry->d_inode);
	if (will_truncate) {
		error = FUNC20(nd.path.mnt);
		if (error)
			goto exit;
	}
	error = FUNC18(&nd.path, acc_mode, open_flag);
	if (error) {
		if (will_truncate)
			FUNC19(nd.path.mnt);
		goto exit;
	}
	filp = FUNC23(&nd);
	if (!FUNC2(filp)) {
		error = FUNC15(filp, acc_mode);
		if (error) {
			FUNC12(filp);
			filp = FUNC1(error);
		}
	}
	if (!FUNC2(filp)) {
		if (acc_mode & MAY_WRITE)
			FUNC34(nd.path.dentry->d_inode);

		if (will_truncate) {
			error = FUNC14(filp);
			if (error) {
				FUNC12(filp);
				filp = FUNC1(error);
			}
		}
	}
	/*
	 * It is now safe to drop the mnt write
	 * because the filp has had a write taken
	 * on its behalf.
	 */
	if (will_truncate)
		FUNC19(nd.path.mnt);
	if (nd.root.mnt)
		FUNC27(&nd.root);
	return filp;

exit_mutex_unlock:
	FUNC22(&dir->d_inode->i_mutex);
	if (got_write)
		FUNC19(nd.path.mnt);
exit_dput:
	FUNC28(&path, &nd);
exit:
	if (!FUNC2(nd.intent.open.file))
		FUNC31(&nd);
exit_parent:
	if (nd.root.mnt)
		FUNC27(&nd.root);
	FUNC27(&nd.path);
	return FUNC1(error);

do_link:
	error = -ELOOP;
	if (flag & O_NOFOLLOW)
		goto exit_dput;
	/*
	 * This is subtle. Instead of calling do_follow_link() we do the
	 * thing by hands. The reason is that this way we have zero link_count
	 * and path_walk() (called from ->follow_link) honoring LOOKUP_PARENT.
	 * After that we have the parent and last component, i.e.
	 * we are in the same situation as after the first path_walk().
	 * Well, almost - if the last component is normal we get its copy
	 * stored in nd->last.name and we will have to putname() it when we
	 * are done. Procfs-like symlinks just set LAST_BIND.
	 */
	nd.flags |= LOOKUP_PARENT;
	error = FUNC32(path.dentry, &nd);
	if (error)
		goto exit_dput;
	error = FUNC5(&path, &nd);
	if (error) {
		/* Does someone understand code flow here? Or it is only
		 * me so stupid? Anathema to whoever designed this non-sense
		 * with "intent.open".
		 */
		FUNC31(&nd);
		if (nd.root.mnt)
			FUNC27(&nd.root);
		return FUNC1(error);
	}
	nd.flags &= ~LOOKUP_PARENT;
	if (nd.last_type == LAST_BIND)
		goto ok;
	error = -EISDIR;
	if (nd.last_type != LAST_NORM)
		goto exit;
	if (nd.last.name[nd.last.len]) {
		FUNC7(nd.last.name);
		goto exit;
	}
	error = -ELOOP;
	if (count++==32) {
		FUNC7(nd.last.name);
		goto exit;
	}
	dir = nd.path.dentry;
	error = FUNC20(nd.path.mnt);
	if (!error)
		got_write = true;
	FUNC21(&dir->d_inode->i_mutex);
	path.dentry = FUNC17(&nd);
	path.mnt = nd.path.mnt;
	FUNC7(nd.last.name);
	goto do_last;
}