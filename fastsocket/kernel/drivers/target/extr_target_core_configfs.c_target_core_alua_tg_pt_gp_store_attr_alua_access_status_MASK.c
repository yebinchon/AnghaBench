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
struct t10_alua_tg_pt_gp {int tg_pt_gp_valid_id; int tg_pt_gp_alua_access_status; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ALUA_STATUS_ALTERED_BY_EXPLICT_STPG ; 
 int ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA ; 
 int ALUA_STATUS_NONE ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC2(
	struct t10_alua_tg_pt_gp *tg_pt_gp,
	const char *page,
	size_t count)
{
	unsigned long tmp;
	int new_status, ret;

	if (!tg_pt_gp->tg_pt_gp_valid_id) {
		FUNC0("Unable to do set ALUA access status on non"
			" valid tg_pt_gp ID: %hu\n",
			tg_pt_gp->tg_pt_gp_valid_id);
		return -EINVAL;
	}

	ret = FUNC1(page, 0, &tmp);
	if (ret < 0) {
		FUNC0("Unable to extract new ALUA access status"
				" from %s\n", page);
		return -EINVAL;
	}
	new_status = (int)tmp;

	if ((new_status != ALUA_STATUS_NONE) &&
	    (new_status != ALUA_STATUS_ALTERED_BY_EXPLICT_STPG) &&
	    (new_status != ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA)) {
		FUNC0("Illegal ALUA access status: 0x%02x\n",
				new_status);
		return -EINVAL;
	}

	tg_pt_gp->tg_pt_gp_alua_access_status = new_status;
	return count;
}