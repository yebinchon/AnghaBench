#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct target_core_fabric_ops {int /*<<< orphan*/  (* get_fabric_name ) () ;} ;
struct t10_reservation {int /*<<< orphan*/  registration_lock; } ;
struct t10_pr_registration {char* pr_res_key; char* pr_res_generation; int /*<<< orphan*/  pr_reg_abort_list; int /*<<< orphan*/  pr_aptpl_buf; TYPE_4__* pr_reg_nacl; TYPE_3__* pr_reg_deve; scalar_t__ pr_reg_all_tg_pt; int /*<<< orphan*/  pr_res_holders; int /*<<< orphan*/  pr_reg_list; } ;
struct se_device {TYPE_2__* transport; struct t10_reservation t10_pr; } ;
struct list_head {int dummy; } ;
struct TYPE_8__ {char* initiatorname; TYPE_1__* se_tpg; } ;
struct TYPE_7__ {scalar_t__ pr_res_key; scalar_t__ def_pr_registered; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {struct target_core_fabric_ops* se_tpg_tfo; } ;

/* Variables and functions */
 int PR_REG_ISID_ID_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct t10_pr_registration*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct t10_pr_registration*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct t10_pr_registration*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  t10_pr_reg_cache ; 

__attribute__((used)) static void FUNC16(
	struct se_device *dev,
	struct t10_pr_registration *pr_reg,
	struct list_head *preempt_and_abort_list,
	int dec_holders)
{
	struct target_core_fabric_ops *tfo =
			pr_reg->pr_reg_nacl->se_tpg->se_tpg_tfo;
	struct t10_reservation *pr_tmpl = &dev->t10_pr;
	char i_buf[PR_REG_ISID_ID_LEN];
	int prf_isid;

	FUNC8(i_buf, 0, PR_REG_ISID_ID_LEN);
	prf_isid = FUNC1(pr_reg, &i_buf[0],
				PR_REG_ISID_ID_LEN);

	pr_reg->pr_reg_deve->def_pr_registered = 0;
	pr_reg->pr_reg_deve->pr_res_key = 0;
	FUNC7(&pr_reg->pr_reg_list);
	/*
	 * Caller accessing *pr_reg using core_scsi3_locate_pr_reg(),
	 * so call core_scsi3_put_pr_reg() to decrement our reference.
	 */
	if (dec_holders)
		FUNC2(pr_reg);
	/*
	 * Wait until all reference from any other I_T nexuses for this
	 * *pr_reg have been released.  Because list_del() is called above,
	 * the last core_scsi3_put_pr_reg(pr_reg) will release this reference
	 * count back to zero, and we release *pr_reg.
	 */
	while (FUNC0(&pr_reg->pr_res_holders) != 0) {
		FUNC11(&pr_tmpl->registration_lock);
		FUNC9("SPC-3 PR [%s] waiting for pr_res_holders\n",
				tfo->get_fabric_name());
		FUNC3();
		FUNC10(&pr_tmpl->registration_lock);
	}

	FUNC9("SPC-3 PR [%s] Service Action: UNREGISTER Initiator"
		" Node: %s%s\n", tfo->get_fabric_name(),
		pr_reg->pr_reg_nacl->initiatorname,
		(prf_isid) ? &i_buf[0] : "");
	FUNC9("SPC-3 PR [%s] for %s TCM Subsystem %s Object Target"
		" Port(s)\n", tfo->get_fabric_name(),
		(pr_reg->pr_reg_all_tg_pt) ? "ALL" : "SINGLE",
		dev->transport->name);
	FUNC9("SPC-3 PR [%s] SA Res Key: 0x%016Lx PRgeneration:"
		" 0x%08x\n", tfo->get_fabric_name(), pr_reg->pr_res_key,
		pr_reg->pr_res_generation);

	if (!preempt_and_abort_list) {
		pr_reg->pr_reg_deve = NULL;
		pr_reg->pr_reg_nacl = NULL;
		FUNC4(pr_reg->pr_aptpl_buf);
		FUNC5(t10_pr_reg_cache, pr_reg);
		return;
	}
	/*
	 * For PREEMPT_AND_ABORT, the list of *pr_reg in preempt_and_abort_list
	 * are released once the ABORT_TASK_SET has completed..
	 */
	FUNC6(&pr_reg->pr_reg_abort_list, preempt_and_abort_list);
}