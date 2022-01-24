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
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_eattr; } ;

/* Variables and functions */
 struct posix_acl* ACL_NOT_CACHED ; 
 int EINVAL ; 
 struct posix_acl* FUNC0 (int) ; 
 struct posix_acl* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (struct gfs2_inode*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct posix_acl* FUNC5 (char*,int) ; 

__attribute__((used)) static struct posix_acl *FUNC6(struct gfs2_inode *ip, int type)
{
	struct posix_acl *acl;
	const char *name;
	char *data;
	int len;

	if (!ip->i_eattr)
		return NULL;

	acl = FUNC1(&ip->i_inode, type);
	if (acl != ACL_NOT_CACHED)
		return acl;

	name = FUNC2(type);
	if (name == NULL)
		return FUNC0(-EINVAL);

	len = FUNC3(ip, name, &data);
	if (len < 0)
		return FUNC0(len);
	if (len == 0)
		return NULL;

	acl = FUNC5(data, len);
	FUNC4(data);
	return acl;
}