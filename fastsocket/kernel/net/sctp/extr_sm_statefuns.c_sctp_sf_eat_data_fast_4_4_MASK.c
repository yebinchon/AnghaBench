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
typedef  int /*<<< orphan*/  u8 ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_2__ {scalar_t__ data_hdr; } ;
struct sctp_chunk {scalar_t__ end_of_packet; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_datahdr_t ;
typedef  int /*<<< orphan*/  sctp_data_chunk_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SCTP_CMD_GEN_SACK ; 
 int /*<<< orphan*/  SCTP_CMD_GEN_SHUTDOWN ; 
 int /*<<< orphan*/  SCTP_CMD_REPORT_BAD_TAG ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_RESTART ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  SCTP_IERROR_BAD_STREAM 134 
#define  SCTP_IERROR_DUP_TSN 133 
#define  SCTP_IERROR_HIGH_TSN 132 
#define  SCTP_IERROR_IGNORE_TSN 131 
#define  SCTP_IERROR_NO_DATA 130 
#define  SCTP_IERROR_NO_ERROR 129 
#define  SCTP_IERROR_PROTO_VIOLATION 128 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 int FUNC6 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC11(const struct sctp_endpoint *ep,
				     const struct sctp_association *asoc,
				     const sctp_subtype_t type,
				     void *arg,
				     sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	int error;

	if (!FUNC10(chunk, asoc)) {
		FUNC4(commands, SCTP_CMD_REPORT_BAD_TAG,
				FUNC2());
		return FUNC8(ep, asoc, type, arg, commands);
	}

	if (!FUNC5(chunk, sizeof(sctp_data_chunk_t)))
		return FUNC9(ep, asoc, type, arg,
						  commands);

	error = FUNC6(asoc, chunk, commands );
	switch (error) {
	case SCTP_IERROR_NO_ERROR:
	case SCTP_IERROR_HIGH_TSN:
	case SCTP_IERROR_DUP_TSN:
	case SCTP_IERROR_IGNORE_TSN:
	case SCTP_IERROR_BAD_STREAM:
		break;
	case SCTP_IERROR_NO_DATA:
		goto consume;
	case SCTP_IERROR_PROTO_VIOLATION:
		return FUNC7(ep, asoc, chunk, commands,
			(u8 *)chunk->subh.data_hdr, sizeof(sctp_datahdr_t));
	default:
		FUNC0();
	}

	/* Go a head and force a SACK, since we are shutting down. */

	/* Implementor's Guide.
	 *
	 * While in SHUTDOWN-SENT state, the SHUTDOWN sender MUST immediately
	 * respond to each received packet containing one or more DATA chunk(s)
	 * with a SACK, a SHUTDOWN chunk, and restart the T2-shutdown timer
	 */
	if (chunk->end_of_packet) {
		/* We must delay the chunk creation since the cumulative
		 * TSN has not been updated yet.
		 */
		FUNC4(commands, SCTP_CMD_GEN_SHUTDOWN, FUNC2());
		FUNC4(commands, SCTP_CMD_GEN_SACK, FUNC1());
		FUNC4(commands, SCTP_CMD_TIMER_RESTART,
				FUNC3(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));
	}

consume:
	return SCTP_DISPOSITION_CONSUME;
}