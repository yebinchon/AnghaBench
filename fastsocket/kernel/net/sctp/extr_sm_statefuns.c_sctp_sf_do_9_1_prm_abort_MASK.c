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
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_USER_ABORT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

sctp_disposition_t FUNC6(
	const struct sctp_endpoint *ep,
	const struct sctp_association *asoc,
	const sctp_subtype_t type,
	void *arg,
	sctp_cmd_seq_t *commands)
{
	/* From 9.1 Abort of an Association
	 * Upon receipt of the ABORT primitive from its upper
	 * layer, the endpoint enters CLOSED state and
	 * discard all outstanding data has been
	 * acknowledged by its peer. The endpoint accepts no new data
	 * from its upper layer, but retransmits data to the far end
	 * if necessary to fill gaps.
	 */
	struct sctp_chunk *abort = arg;
	sctp_disposition_t retval;

	retval = SCTP_DISPOSITION_CONSUME;

	FUNC5(commands, SCTP_CMD_REPLY, FUNC0(abort));

	/* Even if we can't send the ABORT due to low memory delete the
	 * TCB.  This is a departure from our typical NOMEM handling.
	 */

	FUNC5(commands, SCTP_CMD_SET_SK_ERR,
			FUNC2(ECONNABORTED));
	/* Delete the established association. */
	FUNC5(commands, SCTP_CMD_ASSOC_FAILED,
			FUNC4(SCTP_ERROR_USER_ABORT));

	FUNC3(SCTP_MIB_ABORTEDS);
	FUNC1(SCTP_MIB_CURRESTAB);

	return retval;
}