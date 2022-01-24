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
struct inode {int /*<<< orphan*/  i_dentry; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ OS_TYPE_SYMLINK ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,char*) ; 

__attribute__((used)) static int FUNC8(struct inode *ino)
{
	char *name;
	int err = 0;

	/*
	 * Unfortunately, we are called from iget() when we don't have a dentry
	 * allocated yet.
	 */
	if (FUNC6(&ino->i_dentry))
		goto out;

	err = -ENOMEM;
	name = FUNC4(ino, 0);
	if (name == NULL)
		goto out;

	if (FUNC2(name, NULL, NULL) == OS_TYPE_SYMLINK) {
		name = FUNC3(name);
		if (FUNC0(name)) {
			err = FUNC1(name);
			goto out;
		}
	}

	err = FUNC7(ino, name);
	FUNC5(name);
 out:
	return err;
}