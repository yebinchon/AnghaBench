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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ecryptfs_dentry_info_cache ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dentry *dentry)
{
	if (FUNC3(dentry)) {
		if (FUNC1(dentry)) {
			FUNC0(FUNC1(dentry));
			FUNC5(FUNC2(dentry));
		}
		FUNC4(ecryptfs_dentry_info_cache,
				FUNC3(dentry));
	}
	return;
}