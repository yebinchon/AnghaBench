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
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; int state; scalar_t__ shutdown_last_sent_to; int /*<<< orphan*/  shutdown_retries; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SETUP_T2 ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_STRIKE ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_RESTART ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_T2_SHUTDOWN_EXPIREDS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  SCTP_STATE_SHUTDOWN_ACK_SENT 129 
#define  SCTP_STATE_SHUTDOWN_SENT 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC10 (struct sctp_association const*,int /*<<< orphan*/ *) ; 
 struct sctp_chunk* FUNC11 (struct sctp_association const*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC12(const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const sctp_subtype_t type,
					   void *arg,
					   sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *reply = NULL;

	FUNC2("Timer T2 expired.\n");
	FUNC5(SCTP_MIB_T2_SHUTDOWN_EXPIREDS);

	((struct sctp_association *)asoc)->shutdown_retries++;

	if (asoc->overall_error_count >= asoc->max_retrans) {
		FUNC9(commands, SCTP_CMD_SET_SK_ERR,
				FUNC4(ETIMEDOUT));
		/* Note:  CMD_ASSOC_FAILED calls CMD_DELETE_TCB. */
		FUNC9(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC6(SCTP_ERROR_NO_ERROR));
		FUNC5(SCTP_MIB_ABORTEDS);
		FUNC3(SCTP_MIB_CURRESTAB);
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	switch (asoc->state) {
	case SCTP_STATE_SHUTDOWN_SENT:
		reply = FUNC10(asoc, NULL);
		break;

	case SCTP_STATE_SHUTDOWN_ACK_SENT:
		reply = FUNC11(asoc, NULL);
		break;

	default:
		FUNC0();
		break;
	}

	if (!reply)
		goto nomem;

	/* Do some failure management (Section 8.2).
	 * If we remove the transport an SHUTDOWN was last sent to, don't
	 * do failure management.
	 */
	if (asoc->shutdown_last_sent_to)
		FUNC9(commands, SCTP_CMD_STRIKE,
				FUNC8(asoc->shutdown_last_sent_to));

	/* Set the transport for the SHUTDOWN/ACK chunk and the timeout for
	 * the T2-shutdown timer.
	 */
	FUNC9(commands, SCTP_CMD_SETUP_T2, FUNC1(reply));

	/* Restart the T2-shutdown timer.  */
	FUNC9(commands, SCTP_CMD_TIMER_RESTART,
			FUNC7(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));
	FUNC9(commands, SCTP_CMD_REPLY, FUNC1(reply));
	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}