#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dentry {int /*<<< orphan*/  i_mutex; struct dentry* d_inode; struct dentry* d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  debug_id; } ;
struct cachefiles_object {struct dentry* dentry; int /*<<< orphan*/  flags; TYPE_1__ fscache; } ;
struct cachefiles_cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  CACHEFILES_OBJECT_BURIED ; 
 int /*<<< orphan*/  I_MUTEX_PARENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct cachefiles_cache*,struct dentry*,struct dentry*,int) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC10(struct cachefiles_cache *cache,
			     struct cachefiles_object *object)
{
	struct dentry *dir;
	int ret;

	FUNC2(",OBJ%x{%p}", object->fscache.debug_id, object->dentry);

	FUNC0(object->dentry);
	FUNC0(object->dentry->d_inode);
	FUNC0(object->dentry->d_parent);

	dir = FUNC5(object->dentry);

	FUNC7(&dir->d_inode->i_mutex, I_MUTEX_PARENT);

	if (FUNC9(CACHEFILES_OBJECT_BURIED, &object->flags)) {
		/* object allocation for the same key preemptively deleted this
		 * object's file so that it could create its own file */
		FUNC1("object preemptively buried");
		FUNC8(&dir->d_inode->i_mutex);
		ret = 0;
	} else {
		/* we need to check that our parent is _still_ our parent - it
		 * may have been renamed */
		if (dir == object->dentry->d_parent) {
			ret = FUNC4(cache, dir,
						     object->dentry, false);
		} else {
			/* it got moved, presumably by cachefilesd culling it,
			 * so it's no longer in the key path and we can ignore
			 * it */
			FUNC8(&dir->d_inode->i_mutex);
			ret = 0;
		}
	}

	FUNC6(dir);
	FUNC3(" = %d", ret);
	return ret;
}