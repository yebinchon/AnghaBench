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
struct path {struct dentry* dentry; } ;
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; } ;
struct dcookie_struct {struct path path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_COOKIE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dcookie_cache ; 
 int /*<<< orphan*/  FUNC0 (struct dcookie_struct*) ; 
 struct dcookie_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dcookie_struct *FUNC5(struct path *path)
{
	struct dcookie_struct *dcs = FUNC1(dcookie_cache,
							GFP_KERNEL);
	struct dentry *d;
	if (!dcs)
		return NULL;

	d = path->dentry;
	FUNC3(&d->d_lock);
	d->d_flags |= DCACHE_COOKIE;
	FUNC4(&d->d_lock);

	dcs->path = *path;
	FUNC2(path);
	FUNC0(dcs);
	return dcs;
}