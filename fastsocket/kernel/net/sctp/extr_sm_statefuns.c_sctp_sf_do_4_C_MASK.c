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
struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  singleton; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_SHUTDOWNS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  SCTP_SHUTDOWN_COMP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC11 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC13(const struct sctp_endpoint *ep,
				  const struct sctp_association *asoc,
				  const sctp_subtype_t type,
				  void *arg,
				  sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_ulpevent *ev;

	if (!FUNC12(chunk, asoc))
		return FUNC8(ep, asoc, type, arg, commands);

	/* RFC 2960 6.10 Bundling
	 *
	 * An endpoint MUST NOT bundle INIT, INIT ACK or
	 * SHUTDOWN COMPLETE with any other chunks.
	 */
	if (!chunk->singleton)
		return FUNC9(ep, asoc, type, arg, commands);

	/* Make sure that the SHUTDOWN_COMPLETE chunk has a valid length. */
	if (!FUNC7(chunk, sizeof(sctp_chunkhdr_t)))
		return FUNC10(ep, asoc, type, arg,
						  commands);

	/* RFC 2960 10.2 SCTP-to-ULP
	 *
	 * H) SHUTDOWN COMPLETE notification
	 *
	 * When SCTP completes the shutdown procedures (section 9.2) this
	 * notification is passed to the upper layer.
	 */
	ev = FUNC11(asoc, 0, SCTP_SHUTDOWN_COMP,
					     0, 0, 0, NULL, GFP_ATOMIC);
	if (ev)
		FUNC6(commands, SCTP_CMD_EVENT_ULP,
				FUNC5(ev));

	/* Upon reception of the SHUTDOWN COMPLETE chunk the endpoint
	 * will verify that it is in SHUTDOWN-ACK-SENT state, if it is
	 * not the chunk should be discarded. If the endpoint is in
	 * the SHUTDOWN-ACK-SENT state the endpoint should stop the
	 * T2-shutdown timer and remove all knowledge of the
	 * association (and thus the association enters the CLOSED
	 * state).
	 */
	FUNC6(commands, SCTP_CMD_TIMER_STOP,
			FUNC4(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

	FUNC6(commands, SCTP_CMD_TIMER_STOP,
			FUNC4(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

	FUNC6(commands, SCTP_CMD_NEW_STATE,
			FUNC3(SCTP_STATE_CLOSED));

	FUNC1(SCTP_MIB_SHUTDOWNS);
	FUNC0(SCTP_MIB_CURRESTAB);

	FUNC6(commands, SCTP_CMD_DELETE_TCB, FUNC2());

	return SCTP_DISPOSITION_DELETE_TCB;
}