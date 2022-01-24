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
typedef  int u8 ;
struct tomoyo_path_info {int dummy; } ;
struct tomoyo_domain_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt; } ;
struct file {TYPE_1__ f_path; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  TOMOYO_MAC_FOR_FILE ; 
 int /*<<< orphan*/  TOMOYO_TYPE_REWRITE_ACL ; 
 int FUNC0 (struct tomoyo_domain_info*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tomoyo_domain_info*,int /*<<< orphan*/ ,struct tomoyo_path_info*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct tomoyo_path_info*) ; 
 struct tomoyo_path_info* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct tomoyo_path_info*) ; 

int FUNC5(struct tomoyo_domain_info *domain,
				    struct file *filp)
{
	int error = -ENOMEM;
	const u8 mode = FUNC0(domain, TOMOYO_MAC_FOR_FILE);
	const bool is_enforce = (mode == 3);
	struct tomoyo_path_info *buf;

	if (!mode || !filp->f_path.mnt)
		return 0;
	buf = FUNC3(&filp->f_path);
	if (!buf)
		goto out;
	if (!FUNC4(buf)) {
		error = 0;
		goto out;
	}
	error = FUNC1(domain,
						     TOMOYO_TYPE_REWRITE_ACL,
						     buf, mode);
 out:
	FUNC2(buf);
	if (!is_enforce)
		error = 0;
	return error;
}