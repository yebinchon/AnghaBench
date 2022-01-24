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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct dentry {TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct cachefiles_cache {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ESTALE ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct cachefiles_cache*,struct dentry*,struct dentry*,int) ; 
 struct dentry* FUNC6 (struct cachefiles_cache*,struct dentry*,char*) ; 
 int FUNC7 (struct cachefiles_cache*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct cachefiles_cache *cache, struct dentry *dir,
		    char *filename)
{
	struct dentry *victim;
	int ret;

	FUNC3(",%*.*s/,%s",
	       dir->d_name.len, dir->d_name.len, dir->d_name.name, filename);

	victim = FUNC6(cache, dir, filename);
	if (FUNC0(victim))
		return FUNC1(victim);

	FUNC2("victim -> %p %s",
	       victim, victim->d_inode ? "positive" : "negative");

	/* okay... the victim is not being used so we can cull it
	 * - start by marking it as stale
	 */
	FUNC2("victim is cullable");

	ret = FUNC7(cache, victim);
	if (ret < 0)
		goto error_unlock;

	/*  actually remove the victim (drops the dir mutex) */
	FUNC2("bury");

	ret = FUNC5(cache, dir, victim, false);
	if (ret < 0)
		goto error;

	FUNC8(victim);
	FUNC4(" = 0");
	return 0;

error_unlock:
	FUNC10(&dir->d_inode->i_mutex);
error:
	FUNC8(victim);
	if (ret == -ENOENT) {
		/* file or dir now absent - probably retired by netfs */
		FUNC4(" = -ESTALE [absent]");
		return -ESTALE;
	}

	if (ret != -ENOMEM) {
		FUNC9("Internal error: %d", ret);
		ret = -EIO;
	}

	FUNC4(" = %d", ret);
	return ret;
}