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
struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; int tg_pt_gp_valid_id; int /*<<< orphan*/  tg_pt_gp_list; scalar_t__ tg_pt_gp_id; int /*<<< orphan*/  tg_pt_gp_implict_trans_secs; int /*<<< orphan*/  tg_pt_gp_trans_delay_msecs; int /*<<< orphan*/  tg_pt_gp_nonop_delay_msecs; int /*<<< orphan*/  tg_pt_gp_alua_access_state; int /*<<< orphan*/  tg_pt_gp_md_buf_len; struct se_device* tg_pt_gp_dev; int /*<<< orphan*/  tg_pt_gp_ref_cnt; int /*<<< orphan*/  tg_pt_gp_lock; int /*<<< orphan*/  tg_pt_gp_md_mutex; int /*<<< orphan*/  tg_pt_gp_mem_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  tg_pt_gps_lock; int /*<<< orphan*/  tg_pt_gps_list; int /*<<< orphan*/  alua_tg_pt_gps_count; int /*<<< orphan*/  alua_tg_pt_gps_counter; } ;
struct se_device {TYPE_1__ t10_alua; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALUA_ACCESS_STATE_ACTIVE_OPTMIZED ; 
 int /*<<< orphan*/  ALUA_DEFAULT_IMPLICT_TRANS_SECS ; 
 int /*<<< orphan*/  ALUA_DEFAULT_NONOP_DELAY_MSECS ; 
 int /*<<< orphan*/  ALUA_DEFAULT_TRANS_DELAY_MSECS ; 
 int /*<<< orphan*/  ALUA_MD_BUF_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int TPGS_EXPLICT_ALUA ; 
 int TPGS_IMPLICT_ALUA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct t10_alua_tg_pt_gp* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  t10_alua_tg_pt_gp_cache ; 

struct t10_alua_tg_pt_gp *FUNC9(struct se_device *dev,
		const char *name, int def_group)
{
	struct t10_alua_tg_pt_gp *tg_pt_gp;

	tg_pt_gp = FUNC2(t10_alua_tg_pt_gp_cache, GFP_KERNEL);
	if (!tg_pt_gp) {
		FUNC5("Unable to allocate struct t10_alua_tg_pt_gp\n");
		return NULL;
	}
	FUNC0(&tg_pt_gp->tg_pt_gp_list);
	FUNC0(&tg_pt_gp->tg_pt_gp_mem_list);
	FUNC4(&tg_pt_gp->tg_pt_gp_md_mutex);
	FUNC7(&tg_pt_gp->tg_pt_gp_lock);
	FUNC1(&tg_pt_gp->tg_pt_gp_ref_cnt, 0);
	tg_pt_gp->tg_pt_gp_dev = dev;
	tg_pt_gp->tg_pt_gp_md_buf_len = ALUA_MD_BUF_LEN;
	FUNC1(&tg_pt_gp->tg_pt_gp_alua_access_state,
		ALUA_ACCESS_STATE_ACTIVE_OPTMIZED);
	/*
	 * Enable both explict and implict ALUA support by default
	 */
	tg_pt_gp->tg_pt_gp_alua_access_type =
			TPGS_EXPLICT_ALUA | TPGS_IMPLICT_ALUA;
	/*
	 * Set the default Active/NonOptimized Delay in milliseconds
	 */
	tg_pt_gp->tg_pt_gp_nonop_delay_msecs = ALUA_DEFAULT_NONOP_DELAY_MSECS;
	tg_pt_gp->tg_pt_gp_trans_delay_msecs = ALUA_DEFAULT_TRANS_DELAY_MSECS;
	tg_pt_gp->tg_pt_gp_implict_trans_secs = ALUA_DEFAULT_IMPLICT_TRANS_SECS;

	if (def_group) {
		FUNC6(&dev->t10_alua.tg_pt_gps_lock);
		tg_pt_gp->tg_pt_gp_id =
				dev->t10_alua.alua_tg_pt_gps_counter++;
		tg_pt_gp->tg_pt_gp_valid_id = 1;
		dev->t10_alua.alua_tg_pt_gps_count++;
		FUNC3(&tg_pt_gp->tg_pt_gp_list,
			      &dev->t10_alua.tg_pt_gps_list);
		FUNC8(&dev->t10_alua.tg_pt_gps_lock);
	}

	return tg_pt_gp;
}