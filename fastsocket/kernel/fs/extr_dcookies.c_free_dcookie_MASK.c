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
struct dentry {int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_flags; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct dcookie_struct {TYPE_1__ path; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_COOKIE ; 
 int /*<<< orphan*/  dcookie_cache ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dcookie_struct*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dcookie_struct * dcs)
{
	struct dentry *d = dcs->path.dentry;

	FUNC2(&d->d_lock);
	d->d_flags &= ~DCACHE_COOKIE;
	FUNC3(&d->d_lock);

	FUNC1(&dcs->path);
	FUNC0(dcookie_cache, dcs);
}