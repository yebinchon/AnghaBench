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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (struct posix_acl*) ; 
 int FUNC1 (struct posix_acl*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct posix_acl* FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct posix_acl*) ; 

ssize_t FUNC6(struct dentry *dentry, char *buffer, size_t size)
{
	struct inode *inode = dentry->d_inode;
	struct posix_acl *acl;
	int pos=0, len=0;

#	define output(s) do {						\
			if (pos + sizeof(s) <= size) {			\
				memcpy(buffer + pos, s, sizeof(s));	\
				pos += sizeof(s);			\
			}						\
			len += sizeof(s);				\
		} while(0)

	acl = FUNC3(inode, ACL_TYPE_ACCESS);
	if (FUNC0(acl))
		return FUNC1(acl);
	if (acl) {
		output("system.posix_acl_access");
		FUNC5(acl);
	}

	if (FUNC2(inode->i_mode)) {
		acl = FUNC3(inode, ACL_TYPE_DEFAULT);
		if (FUNC0(acl))
			return FUNC1(acl);
		if (acl) {
			output("system.posix_acl_default");
			FUNC5(acl);
		}
	}

#	undef output

	if (!buffer || len <= size)
		return len;
	return -ERANGE;
}