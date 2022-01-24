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
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_default_acl; int /*<<< orphan*/  i_acl; } ;

/* Variables and functions */
#define  ACL_TYPE_ACCESS 129 
#define  ACL_TYPE_DEFAULT 128 
 struct posix_acl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct posix_acl *
FUNC3(struct inode *inode, int type)
{
	struct posix_acl *acl = NULL;

	FUNC1(&inode->i_lock);
	switch(type) {
		case ACL_TYPE_ACCESS:
			acl = FUNC0(inode->i_acl);
			break;

		case ACL_TYPE_DEFAULT:
			acl = FUNC0(inode->i_default_acl);
			break;
	}
	FUNC2(&inode->i_lock);

	return acl;
}