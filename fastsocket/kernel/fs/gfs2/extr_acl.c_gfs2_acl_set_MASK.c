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
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFS2_EATYPE_SYS ; 
 char* FUNC1 (int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,char const*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct posix_acl*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int,struct posix_acl*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, int type, struct posix_acl *acl)
{
	int error;
	int len;
	char *data;
	const char *name = FUNC1(type);

	FUNC0(name == NULL);
	len = FUNC5(acl, NULL, 0);
	if (len == 0)
		return 0;
	data = FUNC4(len, GFP_NOFS);
	if (data == NULL)
		return -ENOMEM;
	error = FUNC5(acl, data, len);
	if (error < 0)
		goto out;
	error = FUNC2(inode, GFS2_EATYPE_SYS, name, data, len, 0);
	if (!error)
		FUNC6(inode, type, acl);
out:
	FUNC3(data);
	return error;
}