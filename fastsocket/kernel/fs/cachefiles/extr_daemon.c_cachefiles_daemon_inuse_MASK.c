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
 int /*<<< orphan*/  FUNC1 (struct cachefiles_cache*,struct cred const**) ; 
 int FUNC2 (struct cachefiles_cache*,struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct cachefiles_cache*,struct cred const*) ; 
 TYPE_3__* current ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct cachefiles_cache *cache, char *args)
{
	struct fs_struct *fs;
	struct dentry *dir;
	const struct cred *saved_cred;
	int ret;

	//_enter(",%s", args);

	if (FUNC9(args, '/'))
		goto inval;

	if (!FUNC10(CACHEFILES_READY, &cache->flags)) {
		FUNC6("inuse applied to unready cache");
		return -EIO;
	}

	if (FUNC10(CACHEFILES_DEAD, &cache->flags)) {
		FUNC6("inuse applied to dead cache");
		return -EIO;
	}

	/* extract the directory dentry from the cwd */
	fs = current->fs;
	FUNC7(&fs->lock);
	dir = FUNC4(fs->pwd.dentry);
	FUNC8(&fs->lock);

	if (!FUNC0(dir->d_inode->i_mode))
		goto notdir;

	FUNC1(cache, &saved_cred);
	ret = FUNC2(cache, dir, args);
	FUNC3(cache, saved_cred);

	FUNC5(dir);
	//_leave(" = %d", ret);
	return ret;

notdir:
	FUNC5(dir);
	FUNC6("inuse command requires dirfd to be a directory");
	return -ENOTDIR;

inval:
	FUNC6("inuse command requires dirfd and filename");
	return -EINVAL;
}