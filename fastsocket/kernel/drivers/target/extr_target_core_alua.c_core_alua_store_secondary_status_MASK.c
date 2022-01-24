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
struct TYPE_2__ {int sep_tg_pt_secondary_stat; } ;

/* Variables and functions */
 unsigned long ALUA_STATUS_ALTERED_BY_EXPLICT_STPG ; 
 unsigned long ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA ; 
 unsigned long ALUA_STATUS_NONE ; 
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
		FUNC0("Unable to extract alua_tg_pt_status\n");
		return -EINVAL;
	}
	if ((tmp != ALUA_STATUS_NONE) &&
	    (tmp != ALUA_STATUS_ALTERED_BY_EXPLICT_STPG) &&
	    (tmp != ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA)) {
		FUNC0("Illegal value for alua_tg_pt_status: %lu\n",
				tmp);
		return -EINVAL;
	}
	lun->lun_sep->sep_tg_pt_secondary_stat = (int)tmp;

	return count;
}