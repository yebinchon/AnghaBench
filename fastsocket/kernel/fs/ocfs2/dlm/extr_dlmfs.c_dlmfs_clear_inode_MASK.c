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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_ino; } ;
struct dlmfs_inode_private {int /*<<< orphan*/ * ip_dlm; int /*<<< orphan*/ * ip_parent; int /*<<< orphan*/  ip_lockres; } ;

/* Variables and functions */
 struct dlmfs_inode_private* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct inode *inode)
{
	int status;
	struct dlmfs_inode_private *ip;

	if (!inode)
		return;

	FUNC3(0, "inode %lu\n", inode->i_ino);

	ip = FUNC0(inode);

	if (FUNC1(inode->i_mode)) {
		status = FUNC5(&ip->ip_lockres);
		if (status < 0)
			FUNC4(status);
		FUNC2(ip->ip_parent);
		goto clear_fields;
	}

	FUNC3(0, "we're a directory, ip->ip_dlm = 0x%p\n", ip->ip_dlm);
	/* we must be a directory. If required, lets unregister the
	 * dlm context now. */
	if (ip->ip_dlm)
		FUNC6(ip->ip_dlm);
clear_fields:
	ip->ip_parent = NULL;
	ip->ip_dlm = NULL;
}