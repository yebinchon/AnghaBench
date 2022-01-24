#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct t10_pr_registration {int pr_reg_all_tg_pt; int pr_reg_aptpl; int isid_present_at_reg; int /*<<< orphan*/  pr_reg_isid; int /*<<< orphan*/  pr_reg_bin_isid; TYPE_2__* pr_reg_tg_pt_lun; int /*<<< orphan*/  pr_res_key; int /*<<< orphan*/  pr_aptpl_target_lun; int /*<<< orphan*/  pr_res_mapped_lun; struct se_dev_entry* pr_reg_deve; struct se_node_acl* pr_reg_nacl; int /*<<< orphan*/  pr_res_holders; int /*<<< orphan*/  pr_reg_atp_mem_list; int /*<<< orphan*/  pr_reg_atp_list; int /*<<< orphan*/  pr_reg_aptpl_list; int /*<<< orphan*/  pr_reg_abort_list; int /*<<< orphan*/  pr_reg_list; int /*<<< orphan*/  pr_aptpl_buf; } ;
struct se_node_acl {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pr_aptpl_buf_len; } ;
struct se_device {TYPE_1__ t10_pr; } ;
struct se_dev_entry {TYPE_2__* se_lun; int /*<<< orphan*/  mapped_lun; } ;
struct TYPE_4__ {int /*<<< orphan*/  unpacked_lun; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PR_REG_ISID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct t10_pr_registration*) ; 
 struct t10_pr_registration* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned char*) ; 
 int /*<<< orphan*/  t10_pr_reg_cache ; 

__attribute__((used)) static struct t10_pr_registration *FUNC8(
	struct se_device *dev,
	struct se_node_acl *nacl,
	struct se_dev_entry *deve,
	unsigned char *isid,
	u64 sa_res_key,
	int all_tg_pt,
	int aptpl)
{
	struct t10_pr_registration *pr_reg;

	pr_reg = FUNC4(t10_pr_reg_cache, GFP_ATOMIC);
	if (!pr_reg) {
		FUNC6("Unable to allocate struct t10_pr_registration\n");
		return NULL;
	}

	pr_reg->pr_aptpl_buf = FUNC5(dev->t10_pr.pr_aptpl_buf_len,
					GFP_ATOMIC);
	if (!pr_reg->pr_aptpl_buf) {
		FUNC6("Unable to allocate pr_reg->pr_aptpl_buf\n");
		FUNC3(t10_pr_reg_cache, pr_reg);
		return NULL;
	}

	FUNC0(&pr_reg->pr_reg_list);
	FUNC0(&pr_reg->pr_reg_abort_list);
	FUNC0(&pr_reg->pr_reg_aptpl_list);
	FUNC0(&pr_reg->pr_reg_atp_list);
	FUNC0(&pr_reg->pr_reg_atp_mem_list);
	FUNC1(&pr_reg->pr_res_holders, 0);
	pr_reg->pr_reg_nacl = nacl;
	pr_reg->pr_reg_deve = deve;
	pr_reg->pr_res_mapped_lun = deve->mapped_lun;
	pr_reg->pr_aptpl_target_lun = deve->se_lun->unpacked_lun;
	pr_reg->pr_res_key = sa_res_key;
	pr_reg->pr_reg_all_tg_pt = all_tg_pt;
	pr_reg->pr_reg_aptpl = aptpl;
	pr_reg->pr_reg_tg_pt_lun = deve->se_lun;
	/*
	 * If an ISID value for this SCSI Initiator Port exists,
	 * save it to the registration now.
	 */
	if (isid != NULL) {
		pr_reg->pr_reg_bin_isid = FUNC2(isid);
		FUNC7(pr_reg->pr_reg_isid, PR_REG_ISID_LEN, "%s", isid);
		pr_reg->isid_present_at_reg = 1;
	}

	return pr_reg;
}