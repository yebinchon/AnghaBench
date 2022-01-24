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
struct sctp_outq {int /*<<< orphan*/  cork; int /*<<< orphan*/  control_chunk_list; int /*<<< orphan*/  empty; TYPE_1__* asoc; } ;
struct sctp_chunk {int /*<<< orphan*/  list; TYPE_2__* chunk_hdr; } ;
struct TYPE_4__ {scalar_t__ type; int flags; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
 int ESHUTDOWN ; 
 scalar_t__ SCTP_CID_DATA ; 
 int SCTP_DATA_UNORDERED ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sctp_outq*,struct sctp_chunk*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  SCTP_MIB_OUTORDERCHUNKS ; 
 int /*<<< orphan*/  SCTP_MIB_OUTUNORDERCHUNKS ; 
#define  SCTP_STATE_CLOSED 133 
#define  SCTP_STATE_EMPTY 132 
#define  SCTP_STATE_SHUTDOWN_ACK_SENT 131 
#define  SCTP_STATE_SHUTDOWN_PENDING 130 
#define  SCTP_STATE_SHUTDOWN_RECEIVED 129 
#define  SCTP_STATE_SHUTDOWN_SENT 128 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sctp_outq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_outq*,struct sctp_chunk*) ; 

int FUNC7(struct sctp_outq *q, struct sctp_chunk *chunk)
{
	int error = 0;

	FUNC0("sctp_outq_tail(%p, %p[%s])\n",
			  q, chunk, chunk && chunk->chunk_hdr ?
			  FUNC4(FUNC2(chunk->chunk_hdr->type))
			  : "Illegal Chunk");

	/* If it is data, queue it up, otherwise, send it
	 * immediately.
	 */
	if (SCTP_CID_DATA == chunk->chunk_hdr->type) {
		/* Is it OK to queue data chunks?  */
		/* From 9. Termination of Association
		 *
		 * When either endpoint performs a shutdown, the
		 * association on each peer will stop accepting new
		 * data from its user and only deliver data in queue
		 * at the time of sending or receiving the SHUTDOWN
		 * chunk.
		 */
		switch (q->asoc->state) {
		case SCTP_STATE_EMPTY:
		case SCTP_STATE_CLOSED:
		case SCTP_STATE_SHUTDOWN_PENDING:
		case SCTP_STATE_SHUTDOWN_SENT:
		case SCTP_STATE_SHUTDOWN_RECEIVED:
		case SCTP_STATE_SHUTDOWN_ACK_SENT:
			/* Cannot send after transport endpoint shutdown */
			error = -ESHUTDOWN;
			break;

		default:
			FUNC0("outqueueing (%p, %p[%s])\n",
			  q, chunk, chunk && chunk->chunk_hdr ?
			  FUNC4(FUNC2(chunk->chunk_hdr->type))
			  : "Illegal Chunk");

			FUNC6(q, chunk);
			if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED)
				FUNC1(SCTP_MIB_OUTUNORDERCHUNKS);
			else
				FUNC1(SCTP_MIB_OUTORDERCHUNKS);
			q->empty = 0;
			break;
		}
	} else {
		FUNC3(&chunk->list, &q->control_chunk_list);
		FUNC1(SCTP_MIB_OUTCTRLCHUNKS);
	}

	if (error < 0)
		return error;

	if (!q->cork)
		error = FUNC5(q, 0);

	return error;
}