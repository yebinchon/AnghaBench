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
struct svc_export {int dummy; } ;
typedef  struct svc_export svc_export ;
typedef  int /*<<< orphan*/  svc_client ;
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_export*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct svc_export* FUNC5 (int /*<<< orphan*/ *,struct path*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct svc_export *FUNC6(svc_client *clp, struct path *path)
{
	struct dentry *saved = FUNC2(path->dentry);
	svc_export *exp = FUNC5(clp, path, NULL);

	while (FUNC1(exp) == -ENOENT && !FUNC0(path->dentry)) {
		struct dentry *parent = FUNC3(path->dentry);
		FUNC4(path->dentry);
		path->dentry = parent;
		exp = FUNC5(clp, path, NULL);
	}
	FUNC4(path->dentry);
	path->dentry = saved;
	return exp;
}