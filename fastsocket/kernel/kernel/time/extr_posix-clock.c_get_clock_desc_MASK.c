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
struct posix_clock_desc {scalar_t__ clk; struct file* fp; } ;
struct file {int /*<<< orphan*/  private_data; TYPE_1__* f_op; } ;
typedef  int /*<<< orphan*/  clockid_t ;
struct TYPE_2__ {scalar_t__ open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int EINVAL ; 
 int ENODEV ; 
 struct file* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 scalar_t__ posix_clock_open ; 

__attribute__((used)) static int FUNC4(const clockid_t id, struct posix_clock_desc *cd)
{
	struct file *fp = FUNC1(FUNC0(id));
	int err = -EINVAL;

	if (!fp)
		return err;

	if (fp->f_op->open != posix_clock_open || !fp->private_data)
		goto out;

	cd->fp = fp;
	cd->clk = FUNC3(fp);

	err = cd->clk ? 0 : -ENODEV;
out:
	if (err)
		FUNC2(fp);
	return err;
}