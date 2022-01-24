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
struct path {scalar_t__ dentry; TYPE_1__* mnt; } ;
struct TYPE_4__ {scalar_t__ s_magic; } ;
struct TYPE_3__ {scalar_t__ mnt_root; TYPE_2__* mnt_sb; } ;

/* Variables and functions */
 scalar_t__ AUTOFS_SUPER_MAGIC ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct path*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,struct path*) ; 
 int /*<<< orphan*/  FUNC2 (struct path*) ; 
 int /*<<< orphan*/  FUNC3 (struct path*) ; 

__attribute__((used)) static int FUNC4(const char *pathname,
			     struct path *res,
			     int test(struct path *path, void *data),
			     void *data)
{
	struct path path;
	int err = FUNC1(pathname, 0, &path);
	if (err)
		return err;
	err = -ENOENT;
	while (path.dentry == path.mnt->mnt_root) {
		if (path.mnt->mnt_sb->s_magic == AUTOFS_SUPER_MAGIC) {
			if (test(&path, data)) {
				FUNC2(&path);
				if (!err) /* already found some */
					FUNC3(res);
				*res = path;
				err = 0;
			}
		}
		if (!FUNC0(&path))
			break;
	}
	FUNC3(&path);
	return err;
}