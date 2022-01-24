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
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_SHUTDOWNS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC5(
	const struct sctp_endpoint *ep,
	const struct sctp_association *asoc,
	const sctp_subtype_t type,
	void *arg,
	sctp_cmd_seq_t *commands)
{
	FUNC4(commands, SCTP_CMD_TIMER_STOP,
			FUNC3(SCTP_EVENT_TIMEOUT_T1_INIT));

	FUNC4(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_CLOSED));

	FUNC0(SCTP_MIB_SHUTDOWNS);

	FUNC4(commands, SCTP_CMD_DELETE_TCB, FUNC1());

	return SCTP_DISPOSITION_DELETE_TCB;
}