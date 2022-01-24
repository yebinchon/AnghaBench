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
struct t10_pr_registration {scalar_t__ pr_res_key; struct se_node_acl* pr_reg_nacl; scalar_t__ pr_reg_all_tg_pt; } ;
struct se_node_acl {int /*<<< orphan*/  initiatorname; } ;
struct se_device {int /*<<< orphan*/  dev_reservation_lock; struct t10_pr_registration* dev_pr_res_holder; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct se_device*,struct se_node_acl*,struct t10_pr_registration*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
	struct se_device *dev,
	struct t10_pr_registration *pr_reg)
{
	struct se_node_acl *nacl = pr_reg->pr_reg_nacl;
	struct t10_pr_registration *pr_res_holder;
	int ret = 0;

	FUNC2(&dev->dev_reservation_lock);
	pr_res_holder = dev->dev_pr_res_holder;
	if (!pr_res_holder) {
		FUNC3(&dev->dev_reservation_lock);
		return ret;
	}
	if (pr_res_holder == pr_reg) {
		/*
		 * Perform an implict RELEASE if the registration that
		 * is being released is holding the reservation.
		 *
		 * From spc4r17, section 5.7.11.1:
		 *
		 * e) If the I_T nexus is the persistent reservation holder
		 *    and the persistent reservation is not an all registrants
		 *    type, then a PERSISTENT RESERVE OUT command with REGISTER
		 *    service action or REGISTER AND  IGNORE EXISTING KEY
		 *    service action with the SERVICE ACTION RESERVATION KEY
		 *    field set to zero (see 5.7.11.3).
		 */
		FUNC0(dev, nacl, pr_reg, 0);
		ret = 1;
		/*
		 * For 'All Registrants' reservation types, all existing
		 * registrations are still processed as reservation holders
		 * in core_scsi3_pr_seq_non_holder() after the initial
		 * reservation holder is implictly released here.
		 */
	} else if (pr_reg->pr_reg_all_tg_pt &&
		  (!FUNC4(pr_res_holder->pr_reg_nacl->initiatorname,
			  pr_reg->pr_reg_nacl->initiatorname)) &&
		  (pr_res_holder->pr_res_key == pr_reg->pr_res_key)) {
		FUNC1("SPC-3 PR: Unable to perform ALL_TG_PT=1"
			" UNREGISTER while existing reservation with matching"
			" key 0x%016Lx is present from another SCSI Initiator"
			" Port\n", pr_reg->pr_res_key);
		ret = -EPERM;
	}
	FUNC3(&dev->dev_reservation_lock);

	return ret;
}