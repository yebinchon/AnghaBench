#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {scalar_t__ adaptation_ind; } ;
struct TYPE_3__ {int /*<<< orphan*/  sinit_max_instreams; int /*<<< orphan*/  sinit_num_ostreams; } ;
struct sctp_association {TYPE_2__ peer; TYPE_1__ c; scalar_t__ autoclose; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_HB_TIMERS_START ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_COUNTER_RESET ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  SCTP_COMM_UP ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_AUTOCLOSE ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_COOKIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ACTIVEESTABS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC9 (struct sctp_association const*,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC10 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC12(const struct sctp_endpoint *ep,
				      const struct sctp_association *asoc,
				      const sctp_subtype_t type, void *arg,
				      sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	struct sctp_ulpevent *ev;

	if (!FUNC11(chunk, asoc))
		return FUNC7(ep, asoc, type, arg, commands);

	/* Verify that the chunk length for the COOKIE-ACK is OK.
	 * If we don't do this, any bundled chunks may be junked.
	 */
	if (!FUNC6(chunk, sizeof(sctp_chunkhdr_t)))
		return FUNC8(ep, asoc, type, arg,
						  commands);

	/* Reset init error count upon receipt of COOKIE-ACK,
	 * to avoid problems with the managemement of this
	 * counter in stale cookie situations when a transition back
	 * from the COOKIE-ECHOED state to the COOKIE-WAIT
	 * state is performed.
	 */
	FUNC5(commands, SCTP_CMD_INIT_COUNTER_RESET, FUNC1());

	/* RFC 2960 5.1 Normal Establishment of an Association
	 *
	 * E) Upon reception of the COOKIE ACK, endpoint "A" will move
	 * from the COOKIE-ECHOED state to the ESTABLISHED state,
	 * stopping the T1-cookie timer.
	 */
	FUNC5(commands, SCTP_CMD_TIMER_STOP,
			FUNC3(SCTP_EVENT_TIMEOUT_T1_COOKIE));
	FUNC5(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_ESTABLISHED));
	FUNC0(SCTP_MIB_CURRESTAB);
	FUNC0(SCTP_MIB_ACTIVEESTABS);
	FUNC5(commands, SCTP_CMD_HB_TIMERS_START, FUNC1());
	if (asoc->autoclose)
		FUNC5(commands, SCTP_CMD_TIMER_START,
				FUNC3(SCTP_EVENT_TIMEOUT_AUTOCLOSE));

	/* It may also notify its ULP about the successful
	 * establishment of the association with a Communication Up
	 * notification (see Section 10).
	 */
	ev = FUNC10(asoc, 0, SCTP_COMM_UP,
					     0, asoc->c.sinit_num_ostreams,
					     asoc->c.sinit_max_instreams,
					     NULL, GFP_ATOMIC);

	if (!ev)
		goto nomem;

	FUNC5(commands, SCTP_CMD_EVENT_ULP, FUNC4(ev));

	/* Sockets API Draft Section 5.3.1.6
	 * When a peer sends a Adaptation Layer Indication parameter , SCTP
	 * delivers this notification to inform the application that of the
	 * peers requested adaptation layer.
	 */
	if (asoc->peer.adaptation_ind) {
		ev = FUNC9(asoc, GFP_ATOMIC);
		if (!ev)
			goto nomem;

		FUNC5(commands, SCTP_CMD_EVENT_ULP,
				FUNC4(ev));
	}

	return SCTP_DISPOSITION_CONSUME;
nomem:
	return SCTP_DISPOSITION_NOMEM;
}