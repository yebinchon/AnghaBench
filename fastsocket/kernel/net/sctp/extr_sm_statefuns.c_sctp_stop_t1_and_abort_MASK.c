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
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sctp_disposition_t FUNC7(sctp_cmd_seq_t *commands,
					   __be16 error, int sk_err,
					   const struct sctp_association *asoc,
					   struct sctp_transport *transport)
{
	FUNC0("ABORT received (INIT).\n");
	FUNC6(commands, SCTP_CMD_NEW_STATE,
			FUNC4(SCTP_STATE_CLOSED));
	FUNC2(SCTP_MIB_ABORTEDS);
	FUNC6(commands, SCTP_CMD_TIMER_STOP,
			FUNC5(SCTP_EVENT_TIMEOUT_T1_INIT));
	FUNC6(commands, SCTP_CMD_SET_SK_ERR, FUNC1(sk_err));
	/* CMD_INIT_FAILED will DELETE_TCB. */
	FUNC6(commands, SCTP_CMD_INIT_FAILED,
			FUNC3(error));
	return SCTP_DISPOSITION_ABORT;
}