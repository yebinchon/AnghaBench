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
struct t10_reservation {int /*<<< orphan*/  registration_lock; int /*<<< orphan*/  registration_list; } ;
struct t10_pr_registration {scalar_t__ pr_res_type; scalar_t__ pr_res_holder; } ;
struct se_session {int /*<<< orphan*/  se_node_acl; } ;
struct se_device {struct t10_reservation t10_pr; } ;
struct se_cmd {struct se_device* se_dev; struct se_session* se_sess; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ PR_TYPE_EXCLUSIVE_ACCESS_ALLREG ; 
 scalar_t__ PR_TYPE_EXCLUSIVE_ACCESS_REGONLY ; 
 scalar_t__ PR_TYPE_WRITE_EXCLUSIVE_ALLREG ; 
 scalar_t__ PR_TYPE_WRITE_EXCLUSIVE_REGONLY ; 
 struct t10_pr_registration* FUNC0 (struct se_device*,int /*<<< orphan*/ ,struct se_session*) ; 
 int /*<<< orphan*/  FUNC1 (struct t10_pr_registration*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct se_cmd *cmd)
{
	struct se_session *se_sess = cmd->se_sess;
	struct se_device *dev = cmd->se_dev;
	struct t10_pr_registration *pr_reg;
	struct t10_reservation *pr_tmpl = &dev->t10_pr;
	int conflict = 0;

	pr_reg = FUNC0(cmd->se_dev, se_sess->se_node_acl,
			se_sess);
	if (pr_reg) {
		/*
		 * From spc4r17 5.7.3 Exceptions to SPC-2 RESERVE and RELEASE
		 * behavior
		 *
		 * A RESERVE(6) or RESERVE(10) command shall complete with GOOD
		 * status, but no reservation shall be established and the
		 * persistent reservation shall not be changed, if the command
		 * is received from a) and b) below.
		 *
		 * A RELEASE(6) or RELEASE(10) command shall complete with GOOD
		 * status, but the persistent reservation shall not be released,
		 * if the command is received from a) and b)
		 *
		 * a) An I_T nexus that is a persistent reservation holder; or
		 * b) An I_T nexus that is registered if a registrants only or
		 *    all registrants type persistent reservation is present.
		 *
		 * In all other cases, a RESERVE(6) command, RESERVE(10) command,
		 * RELEASE(6) command, or RELEASE(10) command shall be processed
		 * as defined in SPC-2.
		 */
		if (pr_reg->pr_res_holder) {
			FUNC1(pr_reg);
			return 1;
		}
		if ((pr_reg->pr_res_type == PR_TYPE_WRITE_EXCLUSIVE_REGONLY) ||
		    (pr_reg->pr_res_type == PR_TYPE_EXCLUSIVE_ACCESS_REGONLY) ||
		    (pr_reg->pr_res_type == PR_TYPE_WRITE_EXCLUSIVE_ALLREG) ||
		    (pr_reg->pr_res_type == PR_TYPE_EXCLUSIVE_ACCESS_ALLREG)) {
			FUNC1(pr_reg);
			return 1;
		}
		FUNC1(pr_reg);
		conflict = 1;
	} else {
		/*
		 * Following spc2r20 5.5.1 Reservations overview:
		 *
		 * If a logical unit has executed a PERSISTENT RESERVE OUT
		 * command with the REGISTER or the REGISTER AND IGNORE
		 * EXISTING KEY service action and is still registered by any
		 * initiator, all RESERVE commands and all RELEASE commands
		 * regardless of initiator shall conflict and shall terminate
		 * with a RESERVATION CONFLICT status.
		 */
		FUNC4(&pr_tmpl->registration_lock);
		conflict = (FUNC2(&pr_tmpl->registration_list)) ? 0 : 1;
		FUNC5(&pr_tmpl->registration_lock);
	}

	if (conflict) {
		FUNC3("Received legacy SPC-2 RESERVE/RELEASE"
			" while active SPC-3 registrations exist,"
			" returning RESERVATION_CONFLICT\n");
		return -EBUSY;
	}

	return 0;
}