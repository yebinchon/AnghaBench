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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int fd; int mode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 char* FUNC4 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int,int,int,int,int,int,int,int,int) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (struct inode*,char*) ; 

int FUNC11(struct inode *dir, struct dentry *dentry, int mode,
		  struct nameidata *nd)
{
	struct inode *inode;
	char *name;
	int error, fd;

	inode = FUNC6(dir->i_sb);
	if (FUNC1(inode)) {
		error = FUNC2(inode);
		goto out;
	}

	error = FUNC7(inode, dentry);
	if (error)
		goto out_put;

	error = -ENOMEM;
	name = FUNC4(dentry, 0);
	if (name == NULL)
		goto out_put;

	fd = FUNC5(name,
			 mode & S_IRUSR, mode & S_IWUSR, mode & S_IXUSR,
			 mode & S_IRGRP, mode & S_IWGRP, mode & S_IXGRP,
			 mode & S_IROTH, mode & S_IWOTH, mode & S_IXOTH);
	if (fd < 0)
		error = fd;
	else error = FUNC10(inode, name);

	FUNC9(name);
	if (error)
		goto out_put;

	FUNC0(inode)->fd = fd;
	FUNC0(inode)->mode = FMODE_READ | FMODE_WRITE;
	FUNC3(dentry, inode);
	return 0;

 out_put:
	FUNC8(inode);
 out:
	return error;
}