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
struct dentry {int dummy; } ;
struct cachefiles_xattr {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;
struct cachefiles_object {struct dentry* dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XATTR_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cachefiles_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cachefiles_object*,char*,int) ; 
 int /*<<< orphan*/  cachefiles_xattr_cache ; 
 int FUNC5 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct cachefiles_object *object,
				   struct cachefiles_xattr *auxdata)
{
	struct dentry *dentry = object->dentry;
	int ret;

	FUNC0(dentry);

	FUNC2("%p,#%d", object, auxdata->len);

	/* attempt to install the cache metadata directly */
	FUNC1("SET #%u", auxdata->len);

	ret = FUNC5(dentry, cachefiles_xattr_cache,
			   &auxdata->type, auxdata->len,
			   XATTR_REPLACE);
	if (ret < 0 && ret != -ENOMEM)
		FUNC4(
			object,
			"Failed to update xattr with error %d", ret);

	FUNC3(" = %d", ret);
	return ret;
}