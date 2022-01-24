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
struct sctp_transport {int param_flags; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  scalar_t__ sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_HB_TIMER_UPDATE ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_TRANSPORT_HB_SENT ; 
 int /*<<< orphan*/  SCTP_CMD_TRANSPORT_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_DISPOSITION_CONSUME ; 
 scalar_t__ SCTP_DISPOSITION_DELETE_TCB ; 
 scalar_t__ SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_transport*) ; 
 int SPP_HB_ENABLE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 

sctp_disposition_t FUNC7(const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const sctp_subtype_t type,
					void *arg,
					sctp_cmd_seq_t *commands)
{
	struct sctp_transport *transport = (struct sctp_transport *) arg;

	if (asoc->overall_error_count >= asoc->max_retrans) {
		FUNC5(commands, SCTP_CMD_SET_SK_ERR,
				FUNC1(ETIMEDOUT));
		/* CMD_ASSOC_FAILED calls CMD_DELETE_TCB. */
		FUNC5(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC3(SCTP_ERROR_NO_ERROR));
		FUNC2(SCTP_MIB_ABORTEDS);
		FUNC0(SCTP_MIB_CURRESTAB);
		return SCTP_DISPOSITION_DELETE_TCB;
	}

	/* Section 3.3.5.
	 * The Sender-specific Heartbeat Info field should normally include
	 * information about the sender's current time when this HEARTBEAT
	 * chunk is sent and the destination transport address to which this
	 * HEARTBEAT is sent (see Section 8.3).
	 */

	if (transport->param_flags & SPP_HB_ENABLE) {
		if (SCTP_DISPOSITION_NOMEM ==
				FUNC6(ep, asoc, type, arg,
						  commands))
			return SCTP_DISPOSITION_NOMEM;

		/* Set transport error counter and association error counter
		 * when sending heartbeat.
		 */
		FUNC5(commands, SCTP_CMD_TRANSPORT_HB_SENT,
				FUNC4(transport));
	}
	FUNC5(commands, SCTP_CMD_TRANSPORT_IDLE,
			FUNC4(transport));
	FUNC5(commands, SCTP_CMD_HB_TIMER_UPDATE,
			FUNC4(transport));

	return SCTP_DISPOSITION_CONSUME;
}