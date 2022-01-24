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
struct t10_alua_tg_pt_gp {int tg_pt_gp_trans_delay_msecs; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long ALUA_MAX_TRANS_DELAY_MSECS ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

ssize_t FUNC2(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	const char *page,
	size_t count)
{
	unsigned long tmp;
	int ret;

	ret = FUNC1(page, 0, &tmp);
	if (ret < 0) {
		FUNC0("Unable to extract trans_delay_msecs\n");
		return -EINVAL;
	}
	if (tmp > ALUA_MAX_TRANS_DELAY_MSECS) {
		FUNC0("Passed trans_delay_msecs: %lu, exceeds"
			" ALUA_MAX_TRANS_DELAY_MSECS: %d\n", tmp,
			ALUA_MAX_TRANS_DELAY_MSECS);
		return -EINVAL;
	}
	tg_pt_gp->tg_pt_gp_trans_delay_msecs = (int)tmp;

	return count;
}