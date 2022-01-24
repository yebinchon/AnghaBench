#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ft_sess {TYPE_3__* tport; } ;
struct ft_cmd {int /*<<< orphan*/  work; struct fc_frame* req_frame; int /*<<< orphan*/  seq; struct ft_sess* sess; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* seq_assign ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct TYPE_6__ {TYPE_2__* tpg; struct fc_lport* lport; } ;
struct TYPE_5__ {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAM_STAT_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ft_send_work ; 
 int /*<<< orphan*/  FUNC3 (struct ft_sess*) ; 
 int /*<<< orphan*/  FUNC4 (struct ft_cmd*) ; 
 struct ft_cmd* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC9(struct ft_sess *sess, struct fc_frame *fp)
{
	struct ft_cmd *cmd;
	struct fc_lport *lport = sess->tport->lport;

	cmd = FUNC5(sizeof(*cmd), GFP_ATOMIC);
	if (!cmd)
		goto busy;
	cmd->sess = sess;
	cmd->seq = lport->tt.seq_assign(lport, fp);
	if (!cmd->seq) {
		FUNC4(cmd);
		goto busy;
	}
	cmd->req_frame = fp;		/* hold frame during cmd */

	FUNC0(&cmd->work, ft_send_work);
	FUNC7(sess->tport->tpg->workqueue, &cmd->work);
	return;

busy:
	FUNC6("cmd or seq allocation failure - sending BUSY\n");
	FUNC2(lport, fp, SAM_STAT_BUSY, 0);
	FUNC1(fp);
	FUNC3(sess);		/* undo get from lookup */
}