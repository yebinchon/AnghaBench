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
struct sctp_association {scalar_t__ autoclose; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_HB_TIMERS_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SETUP_T2 ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_RESTART ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_AUTOCLOSE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_SHUTDOWN_SENT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association const*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC6(
	const struct sctp_endpoint *ep,
	const struct sctp_association *asoc,
	const sctp_subtype_t type,
	void *arg,
	sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *reply;

	/* Once all its outstanding data has been acknowledged, the
	 * endpoint shall send a SHUTDOWN chunk to its peer including
	 * in the Cumulative TSN Ack field the last sequential TSN it
	 * has received from the peer.
	 */
	reply = FUNC5(asoc, NULL);
	if (!reply)
		goto nomem;

	/* Set the transport for the SHUTDOWN chunk and the timeout for the
	 * T2-shutdown timer.
	 */
	FUNC4(commands, SCTP_CMD_SETUP_T2, FUNC0(reply));

	/* It shall then start the T2-shutdown timer */
	FUNC4(commands, SCTP_CMD_TIMER_START,
			FUNC3(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

	/* RFC 4960 Section 9.2
	 * The sender of the SHUTDOWN MAY also start an overall guard timer
	 * 'T5-shutdown-guard' to bound the overall time for shutdown sequence.
	 */
	FUNC4(commands, SCTP_CMD_TIMER_RESTART,
			FUNC3(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

	if (asoc->autoclose)
		FUNC4(commands, SCTP_CMD_TIMER_STOP,
				FUNC3(SCTP_EVENT_TIMEOUT_AUTOCLOSE));

	/* and enter the SHUTDOWN-SENT state.  */
	FUNC4(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_SHUTDOWN_SENT));

	/* sctp-implguide 2.10 Issues with Heartbeating and failover
	 *
	 * HEARTBEAT ... is discontinued after sending either SHUTDOWN
	 * or SHUTDOWN-ACK.
	 */
	FUNC4(commands, SCTP_CMD_HB_TIMERS_STOP, FUNC1());

	FUNC4(commands, SCTP_CMD_REPLY, FUNC0(reply));

	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}