#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;
struct path {TYPE_2__* dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int ENOMEM ; 
 int const MAY_WRITE ; 
 int const O_APPEND ; 
 int const O_TRUNC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TOMOYO_MAC_FOR_FILE ; 
 int /*<<< orphan*/  TOMOYO_TYPE_REWRITE_ACL ; 
 int /*<<< orphan*/  TOMOYO_TYPE_TRUNCATE_ACL ; 
 int FUNC2 (struct tomoyo_domain_info*,struct tomoyo_path_info*,int const,char*,int const) ; 
 int FUNC3 (struct tomoyo_domain_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tomoyo_domain_info*,int /*<<< orphan*/ ,struct tomoyo_path_info*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct tomoyo_path_info*) ; 
 struct tomoyo_path_info* FUNC6 (struct path*) ; 
 scalar_t__ FUNC7 (struct tomoyo_path_info*) ; 

int FUNC8(struct tomoyo_domain_info *domain,
				 struct path *path, const int flag)
{
	const u8 acc_mode = FUNC0(flag);
	int error = -ENOMEM;
	struct tomoyo_path_info *buf;
	const u8 mode = FUNC3(domain, TOMOYO_MAC_FOR_FILE);
	const bool is_enforce = (mode == 3);

	if (!mode || !path->mnt)
		return 0;
	if (acc_mode == 0)
		return 0;
	if (path->dentry->d_inode && FUNC1(path->dentry->d_inode->i_mode))
		/*
		 * I don't check directories here because mkdir() and rmdir()
		 * don't call me.
		 */
		return 0;
	buf = FUNC6(path);
	if (!buf)
		goto out;
	error = 0;
	/*
	 * If the filename is specified by "deny_rewrite" keyword,
	 * we need to check "allow_rewrite" permission when the filename is not
	 * opened for append mode or the filename is truncated at open time.
	 */
	if ((acc_mode & MAY_WRITE) &&
	    ((flag & O_TRUNC) || !(flag & O_APPEND)) &&
	    (FUNC7(buf))) {
		error = FUNC4(domain,
						     TOMOYO_TYPE_REWRITE_ACL,
							     buf, mode);
	}
	if (!error)
		error = FUNC2(domain, buf, acc_mode, "open",
						mode);
	if (!error && (flag & O_TRUNC))
		error = FUNC4(domain,
						     TOMOYO_TYPE_TRUNCATE_ACL,
							     buf, mode);
 out:
	FUNC5(buf);
	if (!is_enforce)
		error = 0;
	return error;
}