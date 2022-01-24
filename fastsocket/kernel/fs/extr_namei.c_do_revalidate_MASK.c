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
struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_revalidate ) (struct dentry*,struct nameidata*) ;} ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*,struct nameidata*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline struct dentry *
FUNC5(struct dentry *dentry, struct nameidata *nd)
{
	int status = dentry->d_op->d_revalidate(dentry, nd);
	if (FUNC4(status <= 0)) {
		/*
		 * The dentry failed validation.
		 * If d_revalidate returned 0 attempt to invalidate
		 * the dentry otherwise d_revalidate is asking us
		 * to return a fail status.
		 */
		if (!status) {
			if (!FUNC1(dentry)) {
				FUNC2(dentry);
				dentry = NULL;
			}
		} else {
			FUNC2(dentry);
			dentry = FUNC0(status);
		}
	}
	return dentry;
}