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
struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct security_mnt_opts {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct security_mnt_opts*) ; 
 int FUNC1 (struct super_block*,struct security_mnt_opts*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct security_mnt_opts*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, struct super_block *sb)
{
	struct security_mnt_opts opts;
	int rc;

	rc = FUNC1(sb, &opts);
	if (rc) {
		/* before policy load we may get EINVAL, don't show anything */
		if (rc == -EINVAL)
			rc = 0;
		return rc;
	}

	FUNC2(m, &opts);

	FUNC0(&opts);

	return rc;
}