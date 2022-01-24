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
struct ft_cmd {int /*<<< orphan*/  sess; struct fc_frame* req_frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* seq_release ) (scalar_t__) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 struct fc_lport* FUNC1 (struct fc_frame*) ; 
 scalar_t__ FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ft_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct ft_cmd *cmd)
{
	struct fc_frame *fp;
	struct fc_lport *lport;

	if (!cmd)
		return;
	fp = cmd->req_frame;
	lport = FUNC1(fp);
	if (FUNC2(fp))
		lport->tt.seq_release(FUNC2(fp));
	FUNC0(fp);
	FUNC3(cmd->sess);	/* undo get from lookup at recv */
	FUNC4(cmd);
}