#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpevent {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int error; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; TYPE_1__ outqueue; int /*<<< orphan*/  ulpq; } ;
struct TYPE_5__ {scalar_t__ chunk; } ;
typedef  TYPE_2__ sctp_subtype_t ;
typedef  scalar_t__ sctp_event_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 scalar_t__ SCTP_CID_ABORT ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_COMM_LOST ; 
 scalar_t__ SCTP_EVENT_T_CHUNK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association*,struct sctp_chunk*) ; 
 struct sctp_ulpevent* FUNC6 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(sctp_cmd_seq_t *commands,
				  struct sctp_association *asoc,
				  sctp_event_t event_type,
				  sctp_subtype_t subtype,
				  struct sctp_chunk *chunk,
				  unsigned error)
{
	struct sctp_ulpevent *event;
	struct sctp_chunk *abort;
	/* Cancel any partial delivery in progress. */
	FUNC7(&asoc->ulpq, GFP_ATOMIC);

	if (event_type == SCTP_EVENT_T_CHUNK && subtype.chunk == SCTP_CID_ABORT)
		event = FUNC6(asoc, 0, SCTP_COMM_LOST,
						(__u16)error, 0, 0, chunk,
						GFP_ATOMIC);
	else
		event = FUNC6(asoc, 0, SCTP_COMM_LOST,
						(__u16)error, 0, 0, NULL,
						GFP_ATOMIC);
	if (event)
		FUNC4(commands, SCTP_CMD_EVENT_ULP,
				FUNC3(event));

	if (asoc->overall_error_count >= asoc->max_retrans) {
		abort = FUNC5(asoc, chunk);
		if (abort)
			FUNC4(commands, SCTP_CMD_REPLY,
					FUNC0(abort));
	}

	FUNC4(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_CLOSED));

	/* SEND_FAILED sent later when cleaning up the association. */
	asoc->outqueue.error = error;
	FUNC4(commands, SCTP_CMD_DELETE_TCB, FUNC1());
}