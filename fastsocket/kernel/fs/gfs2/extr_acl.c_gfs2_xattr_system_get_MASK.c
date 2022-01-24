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
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ar_posix_acl; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;

/* Variables and functions */
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct posix_acl*) ; 
 int FUNC3 (struct posix_acl*) ; 
 struct posix_acl* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct posix_acl*) ; 
 int FUNC7 (struct posix_acl*,void*,size_t) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, const char *name,
				 void *buffer, size_t size)
{
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct posix_acl *acl;
	int type;
	int error;

	if (!sdp->sd_args.ar_posix_acl)
		return -EOPNOTSUPP;

	type = FUNC5(name);
	if (type < 0)
		return type;

	acl = FUNC4(FUNC0(inode), type);
	if (FUNC2(acl))
		return FUNC3(acl);
	if (acl == NULL)
		return -ENODATA;

	error = FUNC7(acl, buffer, size);
	FUNC6(acl);

	return error;
}