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
struct inode {int /*<<< orphan*/  i_count; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {char* name; int len; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC11(struct dentry *source_de, struct inode *dir_inode, 
	  struct dentry *de)
{
	struct inode *inode = source_de->d_inode;
        const char * name = de->d_name.name;
	int len = de->d_name.len;
	int error;

	FUNC8();

	if (FUNC4(dir_inode) && FUNC3(name, len)) {
		FUNC9();
		return -EPERM;
	}

	error = FUNC10(dir_inode->i_sb, FUNC2(inode),
			   FUNC2(dir_inode), (const char *)name, len);

	if (error) {
		FUNC5(de);
		goto out;
	}

	FUNC1(dir_inode);
	FUNC0(&inode->i_count);
	FUNC6(de, inode);
	FUNC7(inode);

out:
	FUNC9();
	return(error);
}