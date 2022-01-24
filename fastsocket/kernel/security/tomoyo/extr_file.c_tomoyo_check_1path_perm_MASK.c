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
typedef  int u8 ;
struct tomoyo_path_info {scalar_t__ name; int /*<<< orphan*/  is_dir; } ;
struct tomoyo_domain_info {int dummy; } ;
struct path {int /*<<< orphan*/  mnt; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TOMOYO_MAC_FOR_FILE ; 
#define  TOMOYO_TYPE_MKDIR_ACL 129 
#define  TOMOYO_TYPE_RMDIR_ACL 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (struct tomoyo_domain_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tomoyo_domain_info*,int const,struct tomoyo_path_info*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct tomoyo_path_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct tomoyo_path_info*) ; 
 struct tomoyo_path_info* FUNC5 (struct path*) ; 

int FUNC6(struct tomoyo_domain_info *domain,
			    const u8 operation, struct path *path)
{
	int error = -ENOMEM;
	struct tomoyo_path_info *buf;
	const u8 mode = FUNC1(domain, TOMOYO_MAC_FOR_FILE);
	const bool is_enforce = (mode == 3);

	if (!mode || !path->mnt)
		return 0;
	buf = FUNC5(path);
	if (!buf)
		goto out;
	switch (operation) {
	case TOMOYO_TYPE_MKDIR_ACL:
	case TOMOYO_TYPE_RMDIR_ACL:
		if (!buf->is_dir) {
			/*
			 * tomoyo_get_path() reserves space for appending "/."
			 */
			FUNC0((char *) buf->name, "/");
			FUNC3(buf);
		}
	}
	error = FUNC2(domain, operation, buf,
						     mode);
 out:
	FUNC4(buf);
	if (!is_enforce)
		error = 0;
	return error;
}