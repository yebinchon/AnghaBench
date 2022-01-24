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
struct sctp_association {int /*<<< orphan*/  outqueue; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_SHUTDOWN_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC4(
	const struct sctp_endpoint *ep,
	const struct sctp_association *asoc,
	const sctp_subtype_t type,
	void *arg,
	sctp_cmd_seq_t *commands)
{
	int disposition;

	/* From 9.2 Shutdown of an Association
	 * Upon receipt of the SHUTDOWN primitive from its upper
	 * layer, the endpoint enters SHUTDOWN-PENDING state and
	 * remains there until all outstanding data has been
	 * acknowledged by its peer. The endpoint accepts no new data
	 * from its upper layer, but retransmits data to the far end
	 * if necessary to fill gaps.
	 */
	FUNC1(commands, SCTP_CMD_NEW_STATE,
			FUNC0(SCTP_STATE_SHUTDOWN_PENDING));

	disposition = SCTP_DISPOSITION_CONSUME;
	if (FUNC2(&asoc->outqueue)) {
		disposition = FUNC3(ep, asoc, type,
							    arg, commands);
	}
	return disposition;
}