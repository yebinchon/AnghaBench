#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpevent {int dummy; } ;
struct sctp_shutdown_chunk_t {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_4__ {TYPE_2__* shutdown_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; TYPE_3__* skb; } ;
struct sctp_association {int /*<<< orphan*/  outqueue; int /*<<< orphan*/  next_tsn; int /*<<< orphan*/  ctsn_ack_point; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_5__ {int /*<<< orphan*/  cum_tsn_ack; } ;
typedef  TYPE_2__ sctp_shutdownhdr_t ;
typedef  scalar_t__ sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CMD_EVENT_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_STATE ; 
 int /*<<< orphan*/  SCTP_CMD_PROCESS_CTSN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_DISPOSITION_CONSUME ; 
 scalar_t__ SCTP_DISPOSITION_DISCARD ; 
 scalar_t__ SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_STATE_SHUTDOWN_RECEIVED ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_chunk*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 struct sctp_ulpevent* FUNC13 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sctp_chunk*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int) ; 

sctp_disposition_t FUNC16(const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const sctp_subtype_t type,
					   void *arg,
					   sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	sctp_shutdownhdr_t *sdh;
	sctp_disposition_t disposition;
	struct sctp_ulpevent *ev;
	__u32 ctsn;

	if (!FUNC14(chunk, asoc))
		return FUNC10(ep, asoc, type, arg, commands);

	/* Make sure that the SHUTDOWN chunk has a valid length. */
	if (!FUNC7(chunk,
				      sizeof(struct sctp_shutdown_chunk_t)))
		return FUNC11(ep, asoc, type, arg,
						  commands);

	/* Convert the elaborate header.  */
	sdh = (sctp_shutdownhdr_t *)chunk->skb->data;
	FUNC15(chunk->skb, sizeof(sctp_shutdownhdr_t));
	chunk->subh.shutdown_hdr = sdh;
	ctsn = FUNC5(sdh->cum_tsn_ack);

	if (FUNC4(ctsn, asoc->ctsn_ack_point)) {
		FUNC1("ctsn %x\n", ctsn);
		FUNC1("ctsn_ack_point %x\n", asoc->ctsn_ack_point);
		return SCTP_DISPOSITION_DISCARD;
	}

	/* If Cumulative TSN Ack beyond the max tsn currently
	 * send, terminating the association and respond to the
	 * sender with an ABORT.
	 */
	if (!FUNC4(ctsn, asoc->next_tsn))
		return FUNC12(ep, asoc, type, arg, commands);

	/* API 5.3.1.5 SCTP_SHUTDOWN_EVENT
	 * When a peer sends a SHUTDOWN, SCTP delivers this notification to
	 * inform the application that it should cease sending data.
	 */
	ev = FUNC13(asoc, 0, GFP_ATOMIC);
	if (!ev) {
		disposition = SCTP_DISPOSITION_NOMEM;
		goto out;
	}
	FUNC6(commands, SCTP_CMD_EVENT_ULP, FUNC3(ev));

	/* Upon the reception of the SHUTDOWN, the peer endpoint shall
	 *  - enter the SHUTDOWN-RECEIVED state,
	 *  - stop accepting new data from its SCTP user
	 *
	 * [This is implicit in the new state.]
	 */
	FUNC6(commands, SCTP_CMD_NEW_STATE,
			FUNC2(SCTP_STATE_SHUTDOWN_RECEIVED));
	disposition = SCTP_DISPOSITION_CONSUME;

	if (FUNC8(&asoc->outqueue)) {
		disposition = FUNC9(ep, asoc, type,
							  arg, commands);
	}

	if (SCTP_DISPOSITION_NOMEM == disposition)
		goto out;

	/*  - verify, by checking the Cumulative TSN Ack field of the
	 *    chunk, that all its outstanding DATA chunks have been
	 *    received by the SHUTDOWN sender.
	 */
	FUNC6(commands, SCTP_CMD_PROCESS_CTSN,
			FUNC0(chunk->subh.shutdown_hdr->cum_tsn_ack));

out:
	return disposition;
}