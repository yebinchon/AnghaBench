#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct fs_struct {int /*<<< orphan*/  lock; TYPE_1__ pwd; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {struct fs_struct* fs; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHEFILES_DEAD ; 
 int /*<<< orphan*/  CACHEFILES_READY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOTDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cachefiles_cache*,struct cred const**) ; 
 int FUNC4 (struct cachefiles_cache*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct cachefiles_cache*,struct cred const*) ; 
 TYPE_3__* current ; 
 struct dentry* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (char*,char) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct cachefiles_cache *cache, char *args)
{
	struct fs_struct *fs;
	struct dentry *dir;
	const struct cred *saved_cred;
	int ret;

	FUNC1(",%s", args);

	if (FUNC11(args, '/'))
		goto inval;

	if (!FUNC12(CACHEFILES_READY, &cache->flags)) {
		FUNC8("cull applied to unready cache");
		return -EIO;
	}

	if (FUNC12(CACHEFILES_DEAD, &cache->flags)) {
		FUNC8("cull applied to dead cache");
		return -EIO;
	}

	/* extract the directory dentry from the cwd */
	fs = current->fs;
	FUNC9(&fs->lock);
	dir = FUNC6(fs->pwd.dentry);
	FUNC10(&fs->lock);

	if (!FUNC0(dir->d_inode->i_mode))
		goto notdir;

	FUNC3(cache, &saved_cred);
	ret = FUNC4(cache, dir, args);
	FUNC5(cache, saved_cred);

	FUNC7(dir);
	FUNC2(" = %d", ret);
	return ret;

notdir:
	FUNC7(dir);
	FUNC8("cull command requires dirfd to be a directory");
	return -ENOTDIR;

inval:
	FUNC8("cull command requires dirfd and filename");
	return -EINVAL;
}