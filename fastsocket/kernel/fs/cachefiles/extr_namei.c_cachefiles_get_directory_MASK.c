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
struct dentry {TYPE_2__* d_inode; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_ino; TYPE_1__* i_op; int /*<<< orphan*/  i_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  unlink; int /*<<< orphan*/  rmdir; int /*<<< orphan*/  rename; int /*<<< orphan*/  create; int /*<<< orphan*/  mkdir; int /*<<< orphan*/  lookup; int /*<<< orphan*/  getxattr; int /*<<< orphan*/  setxattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 struct dentry* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (struct cachefiles_cache*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  cachefiles_lookup_histogram ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 struct dentry* FUNC12 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int FUNC16 (TYPE_2__*,struct dentry*,int) ; 

struct dentry *FUNC17(struct cachefiles_cache *cache,
					struct dentry *dir,
					const char *dirname)
{
	struct dentry *subdir;
	unsigned long start;
	int ret;

	FUNC6(",,%s", dirname);

	/* search the current directory for the element name */
	FUNC13(&dir->d_inode->i_mutex);

	start = jiffies;
	subdir = FUNC12(dirname, dir, FUNC15(dirname));
	FUNC9(cachefiles_lookup_histogram, start);
	if (FUNC2(subdir)) {
		if (FUNC3(subdir) == -ENOMEM)
			goto nomem_d_alloc;
		goto lookup_error;
	}

	FUNC5("subdir -> %p %s",
	       subdir, subdir->d_inode ? "positive" : "negative");

	/* we need to create the subdir if it doesn't exist yet */
	if (!subdir->d_inode) {
		ret = FUNC8(cache, 1, 0);
		if (ret < 0)
			goto mkdir_error;

		FUNC5("attempt mkdir");

		ret = FUNC16(dir->d_inode, subdir, 0700);
		if (ret < 0)
			goto mkdir_error;

		FUNC0(subdir->d_inode);

		FUNC5("mkdir -> %p{%p{ino=%lu}}",
		       subdir,
		       subdir->d_inode,
		       subdir->d_inode->i_ino);
	}

	FUNC14(&dir->d_inode->i_mutex);

	/* we need to make sure the subdir is a directory */
	FUNC0(subdir->d_inode);

	if (!FUNC4(subdir->d_inode->i_mode)) {
		FUNC11("%s is not a directory", dirname);
		ret = -EIO;
		goto check_error;
	}

	ret = -EPERM;
	if (!subdir->d_inode->i_op ||
	    !subdir->d_inode->i_op->setxattr ||
	    !subdir->d_inode->i_op->getxattr ||
	    !subdir->d_inode->i_op->lookup ||
	    !subdir->d_inode->i_op->mkdir ||
	    !subdir->d_inode->i_op->create ||
	    !subdir->d_inode->i_op->rename ||
	    !subdir->d_inode->i_op->rmdir ||
	    !subdir->d_inode->i_op->unlink)
		goto check_error;

	FUNC7(" = [%lu]", subdir->d_inode->i_ino);
	return subdir;

check_error:
	FUNC10(subdir);
	FUNC7(" = %d [check]", ret);
	return FUNC1(ret);

mkdir_error:
	FUNC14(&dir->d_inode->i_mutex);
	FUNC10(subdir);
	FUNC11("mkdir %s failed with error %d", dirname, ret);
	return FUNC1(ret);

lookup_error:
	FUNC14(&dir->d_inode->i_mutex);
	ret = FUNC3(subdir);
	FUNC11("Lookup %s failed with error %d", dirname, ret);
	return FUNC1(ret);

nomem_d_alloc:
	FUNC14(&dir->d_inode->i_mutex);
	FUNC7(" = -ENOMEM");
	return FUNC1(-ENOMEM);
}