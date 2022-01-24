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
struct autofs_dev_ioctl {int size; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int,struct autofs_dev_ioctl*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(int cmd, struct autofs_dev_ioctl *param)
{
	int err;

	err = FUNC1(cmd, param);
	if (err) {
		FUNC0("invalid device control module version "
		     "supplied for cmd(0x%08x)", cmd);
		goto out;
	}

	if (param->size > sizeof(*param)) {
		err = FUNC3(param->path, param->size - sizeof(*param));
		if (err) {
			FUNC0(
			  "path string terminator missing for cmd(0x%08x)",
			  cmd);
			goto out;
		}

		err = FUNC2(param->path);
		if (err) {
			FUNC0("invalid path supplied for cmd(0x%08x)",
				    cmd);
			goto out;
		}
	}

	err = 0;
out:
	return err;
}