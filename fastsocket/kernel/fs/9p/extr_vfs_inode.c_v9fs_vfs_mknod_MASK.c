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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 char* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int,int) ; 
 int FUNC10 (struct inode*,struct dentry*,int,char*) ; 

__attribute__((used)) static int
FUNC11(struct inode *dir, struct dentry *dentry, int mode, dev_t rdev)
{
	int retval;
	char *name;

	FUNC2(P9_DEBUG_VFS,
		" %lu,%s mode: %x MAJOR: %u MINOR: %u\n", dir->i_ino,
		dentry->d_name.name, mode, FUNC0(rdev), FUNC1(rdev));

	if (!FUNC8(rdev))
		return -EINVAL;

	name = FUNC6();
	if (!name)
		return -ENOMEM;
	/* build extension */
	if (FUNC3(mode))
		FUNC9(name, "b %u %u", FUNC0(rdev), FUNC1(rdev));
	else if (FUNC4(mode))
		FUNC9(name, "c %u %u", FUNC0(rdev), FUNC1(rdev));
	else if (FUNC5(mode))
		*name = 0;
	else {
		FUNC7(name);
		return -EINVAL;
	}

	retval = FUNC10(dir, dentry, mode, name);
	FUNC7(name);

	return retval;
}