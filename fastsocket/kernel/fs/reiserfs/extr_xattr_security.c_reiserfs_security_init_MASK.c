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
struct reiserfs_security_handle {scalar_t__ length; int /*<<< orphan*/ * value; int /*<<< orphan*/ * name; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  i_has_xattr_dir ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int FUNC4 (struct inode*,struct inode*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__*) ; 

int FUNC5(struct inode *dir, struct inode *inode,
			   struct reiserfs_security_handle *sec)
{
	int blocks = 0;
	int error;

	sec->name = NULL;

	/* Don't add selinux attributes on xattrs - they'll never get used */
	if (FUNC0(dir))
		return 0;

	error = FUNC4(inode, dir, &sec->name,
					     &sec->value, &sec->length);
	if (error) {
		if (error == -EOPNOTSUPP)
			error = 0;

		sec->name = NULL;
		sec->value = NULL;
		sec->length = 0;
		return error;
	}

	if (sec->length) {
		blocks = FUNC2(inode) +
			 FUNC3(inode, sec->length);
		/* We don't want to count the directories twice if we have
		 * a default ACL. */
		FUNC1(inode)->i_flags |= i_has_xattr_dir;
	}
	return blocks;
}