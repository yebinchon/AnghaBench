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
typedef  int /*<<< orphan*/  u8 ;
struct rfcomm_session {int /*<<< orphan*/  initiator; } ;
struct rfcomm_cmd {int /*<<< orphan*/  fcs; int /*<<< orphan*/  len; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_DISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rfcomm_session*,void*,int) ; 

__attribute__((used)) static int FUNC6(struct rfcomm_session *s, u8 dlci)
{
	struct rfcomm_cmd cmd;

	FUNC0("%p dlci %d", s, dlci);

	cmd.addr = FUNC1(s->initiator, dlci);
	cmd.ctrl = FUNC2(RFCOMM_DISC, 1);
	cmd.len  = FUNC4(0);
	cmd.fcs  = FUNC3((u8 *) &cmd);

	return FUNC5(s, (void *) &cmd, sizeof(cmd));
}