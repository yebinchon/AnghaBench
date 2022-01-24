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
struct nameidata {int /*<<< orphan*/  path; } ;
struct gfs2_inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int GFS2_FAST_NAME_SIZE ; 
 struct gfs2_inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,char**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nameidata*,char*) ; 

__attribute__((used)) static void *FUNC6(struct dentry *dentry, struct nameidata *nd)
{
	struct gfs2_inode *ip = FUNC1(dentry->d_inode);
	char array[GFS2_FAST_NAME_SIZE], *buf = array;
	unsigned int len = GFS2_FAST_NAME_SIZE;
	int error;

	error = FUNC2(ip, &buf, &len);
	if (!error) {
		error = FUNC5(nd, buf);
		if (buf != array)
			FUNC3(buf);
	} else
		FUNC4(&nd->path);

	return FUNC0(error);
}