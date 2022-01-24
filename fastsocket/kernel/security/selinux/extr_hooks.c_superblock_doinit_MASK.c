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
struct super_block {TYPE_1__* s_type; } ;
struct security_mnt_opts {int dummy; } ;
struct TYPE_2__ {int fs_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FS_BINARY_MOUNTDATA ; 
 int /*<<< orphan*/  FUNC1 (struct security_mnt_opts*) ; 
 int /*<<< orphan*/  FUNC2 (struct security_mnt_opts*) ; 
 int FUNC3 (char*,struct security_mnt_opts*) ; 
 int FUNC4 (struct super_block*,struct security_mnt_opts*) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb, void *data)
{
	int rc = 0;
	char *options = data;
	struct security_mnt_opts opts;

	FUNC2(&opts);

	if (!data)
		goto out;

	FUNC0(sb->s_type->fs_flags & FS_BINARY_MOUNTDATA);

	rc = FUNC3(options, &opts);
	if (rc)
		goto out_err;

out:
	rc = FUNC4(sb, &opts);

out_err:
	FUNC1(&opts);
	return rc;
}