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
 int /*<<< orphan*/  ECRYPTFS_XATTR_NAME ; 
 int FUNC0 (struct dentry*,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct dentry *ecryptfs_dentry,
				 char *page_virt, size_t size)
{
	int rc;

	rc = FUNC0(ecryptfs_dentry, ECRYPTFS_XATTR_NAME, page_virt,
			       size, 0);
	return rc;
}