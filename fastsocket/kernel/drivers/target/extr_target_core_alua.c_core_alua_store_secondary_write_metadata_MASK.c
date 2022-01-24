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
struct se_lun {TYPE_1__* lun_sep; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int sep_tg_pt_secondary_write_md; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

ssize_t FUNC2(
	struct se_lun *lun,
	const char *page,
	size_t count)
{
	unsigned long tmp;
	int ret;

	ret = FUNC1(page, 0, &tmp);
	if (ret < 0) {
		FUNC0("Unable to extract alua_tg_pt_write_md\n");
		return -EINVAL;
	}
	if ((tmp != 0) && (tmp != 1)) {
		FUNC0("Illegal value for alua_tg_pt_write_md:"
				" %lu\n", tmp);
		return -EINVAL;
	}
	lun->lun_sep->sep_tg_pt_secondary_write_md = (int)tmp;

	return count;
}