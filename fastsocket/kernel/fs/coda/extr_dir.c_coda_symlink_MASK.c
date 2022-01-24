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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;

/* Variables and functions */
 int CODA_MAXPATHLEN ; 
 int ENAMETOOLONG ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char const*,int) ; 

__attribute__((used)) static int FUNC9(struct inode *dir_inode, struct dentry *de,
			const char *symname)
{
        const char *name = de->d_name.name;
	int len = de->d_name.len;
	int symlen;
	int error = 0;

	FUNC5();

	if (FUNC3(dir_inode) && FUNC2(name, len)) {
		FUNC7();
		return -EPERM;
	}

	symlen = FUNC6(symname);
	if ( symlen > CODA_MAXPATHLEN ) {
		FUNC7();
		return -ENAMETOOLONG;
	}

	/*
	 * This entry is now negative. Since we do not create
	 * an inode for the entry we have to drop it.
	 */
	FUNC4(de);
	error = FUNC8(dir_inode->i_sb, FUNC1(dir_inode), name, len,
			      symname, symlen);

	/* mtime is no good anymore */
	if ( !error )
		FUNC0(dir_inode);

	FUNC7();
	return error;
}