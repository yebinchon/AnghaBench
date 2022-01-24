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
struct dentry {int /*<<< orphan*/  d_inode; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XATTR_NAME_NFSV4_ACL ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

ssize_t FUNC4(struct dentry *dentry, char *buf, size_t buflen)
{
	size_t len = FUNC3(XATTR_NAME_NFSV4_ACL) + 1;

	if (!FUNC2(FUNC0(dentry->d_inode)))
		return 0;
	if (buf && buflen < len)
		return -ERANGE;
	if (buf)
		FUNC1(buf, XATTR_NAME_NFSV4_ACL, len);
	return len;
}