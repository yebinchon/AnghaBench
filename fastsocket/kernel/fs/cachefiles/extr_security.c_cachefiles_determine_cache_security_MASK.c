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
struct dentry {int /*<<< orphan*/  d_inode; } ;
struct cred {int dummy; } ;
struct cachefiles_cache {struct cred* cache_cred; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cred*) ; 
 int /*<<< orphan*/  FUNC3 (struct cachefiles_cache*,struct cred const**) ; 
 int FUNC4 (struct cachefiles_cache*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct cachefiles_cache*,struct cred const*) ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cred*) ; 
 int FUNC8 (struct cred*,int /*<<< orphan*/ ) ; 

int FUNC9(struct cachefiles_cache *cache,
					struct dentry *root,
					const struct cred **_saved_cred)
{
	struct cred *new;
	int ret;

	FUNC0("");

	/* duplicate the cache creds for COW (the override is currently in
	 * force, so we can use prepare_creds() to do this) */
	new = FUNC6();
	if (!new)
		return -ENOMEM;

	FUNC5(cache, *_saved_cred);

	/* use the cache root dir's security context as the basis with
	 * which create files */
	ret = FUNC8(new, root->d_inode);
	if (ret < 0) {
		FUNC2(new);
		FUNC3(cache, _saved_cred);
		FUNC1(" = %d [cfa]", ret);
		return ret;
	}

	FUNC7(cache->cache_cred);
	cache->cache_cred = new;

	FUNC3(cache, _saved_cred);
	ret = FUNC4(cache, root);

	if (ret == -EOPNOTSUPP)
		ret = 0;
	FUNC1(" = %d", ret);
	return ret;
}