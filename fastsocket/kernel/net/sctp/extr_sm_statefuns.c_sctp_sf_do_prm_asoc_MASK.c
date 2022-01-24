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
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bind_addr; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_CHOOSE_TRANSPORT ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_ASOC ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_START ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_COOKIE_WAIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC6(const struct sctp_endpoint *ep,
				       const struct sctp_association *asoc,
				       const sctp_subtype_t type,
				       void *arg,
				       sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *repl;
	struct sctp_association* my_asoc;

	/* The comment below says that we enter COOKIE-WAIT AFTER
	 * sending the INIT, but that doesn't actually work in our
	 * implementation...
	 */
	FUNC4(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_COOKIE_WAIT));

	/* RFC 2960 5.1 Normal Establishment of an Association
	 *
	 * A) "A" first sends an INIT chunk to "Z".  In the INIT, "A"
	 * must provide its Verification Tag (Tag_A) in the Initiate
	 * Tag field.  Tag_A SHOULD be a random number in the range of
	 * 1 to 4294967295 (see 5.3.1 for Tag value selection). ...
	 */

	repl = FUNC5(asoc, &asoc->base.bind_addr, GFP_ATOMIC, 0);
	if (!repl)
		goto nomem;

	/* Cast away the const modifier, as we want to just
	 * rerun it through as a sideffect.
	 */
	my_asoc = (struct sctp_association *)asoc;
	FUNC4(commands, SCTP_CMD_NEW_ASOC, FUNC0(my_asoc));

	/* Choose transport for INIT. */
	FUNC4(commands, SCTP_CMD_INIT_CHOOSE_TRANSPORT,
			FUNC1(repl));

	/* After sending the INIT, "A" starts the T1-init timer and
	 * enters the COOKIE-WAIT state.
	 */
	FUNC4(commands, SCTP_CMD_TIMER_START,
			FUNC3(SCTP_EVENT_TIMEOUT_T1_INIT));
	FUNC4(commands, SCTP_CMD_REPLY, FUNC1(repl));
	return SCTP_DISPOSITION_CONSUME;

nomem:
	return SCTP_DISPOSITION_NOMEM;
}