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
struct posix_acl {int dummy; } ;
struct inode {int /*<<< orphan*/  i_lock; struct posix_acl* i_default_acl; struct posix_acl* i_acl; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 void* FUNC0 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC1 (struct posix_acl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct inode *inode, int type, struct posix_acl *acl)
{
	struct posix_acl *free = NULL;

	FUNC2(&inode->i_lock);
	switch(type) {
		case ACL_TYPE_ACCESS:
			free = inode->i_acl;
			inode->i_acl = FUNC0(acl);
			break;

		case ACL_TYPE_DEFAULT:
			free = inode->i_default_acl;
			inode->i_default_acl = FUNC0(acl);
			break;
	}
	FUNC3(&inode->i_lock);
	FUNC1(free);
}