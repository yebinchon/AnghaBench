#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sctp_packet {void* vtag; } ;
struct TYPE_15__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_7__ base; } ;
struct sctp_chunk {TYPE_6__* skb; TYPE_5__* sctp_hdr; TYPE_3__* chunk_hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_10__ {TYPE_1__ i; } ;
struct sctp_association {scalar_t__ state; TYPE_2__ peer; } ;
struct TYPE_12__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_16__ {TYPE_4__ init_hdr; } ;
typedef  TYPE_8__ sctp_initack_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_14__ {int /*<<< orphan*/  sk; } ;
struct TYPE_13__ {int /*<<< orphan*/  vtag; } ;
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CHUNK_FLAG_T ; 
 int /*<<< orphan*/  SCTP_CID_ABORT ; 
 scalar_t__ SCTP_CID_INIT_ACK ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_INIT_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
 int /*<<< orphan*/  SCTP_CMD_UPDATE_INITTAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_ABORT ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T1_INIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_STATE_COOKIE_ECHOED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC13 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC14 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/  const*,size_t const) ; 
 struct sctp_packet* FUNC15 (struct sctp_association const*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC16 (struct sctp_packet*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct sctp_chunk*) ; 

__attribute__((used)) static sctp_disposition_t FUNC19(
				     const struct sctp_endpoint *ep,
				     const struct sctp_association *asoc,
				     void *arg,
				     sctp_cmd_seq_t *commands,
				     const __u8 *payload,
				     const size_t paylen)
{
	struct sctp_packet *packet = NULL;
	struct sctp_chunk *chunk =  arg;
	struct sctp_chunk *abort = NULL;

	/* SCTP-AUTH, Section 6.3:
	 *    It should be noted that if the receiver wants to tear
	 *    down an association in an authenticated way only, the
	 *    handling of malformed packets should not result in
	 *    tearing down the association.
	 *
	 * This means that if we only want to abort associations
	 * in an authenticated way (i.e AUTH+ABORT), then we
	 * can't destroy this association just becuase the packet
	 * was malformed.
	 */
	if (FUNC11(SCTP_CID_ABORT, asoc))
		goto discard;

	/* Make the abort chunk. */
	abort = FUNC14(asoc, chunk, payload, paylen);
	if (!abort)
		goto nomem;

	if (asoc) {
		/* Treat INIT-ACK as a special case during COOKIE-WAIT. */
		if (chunk->chunk_hdr->type == SCTP_CID_INIT_ACK &&
		    !asoc->peer.i.init_tag) {
			sctp_initack_chunk_t *initack;

			initack = (sctp_initack_chunk_t *)chunk->chunk_hdr;
			if (!FUNC13(chunk,
						     sizeof(sctp_initack_chunk_t)))
				abort->chunk_hdr->flags |= SCTP_CHUNK_FLAG_T;
			else {
				unsigned int inittag;

				inittag = FUNC9(initack->init_hdr.init_tag);
				FUNC10(commands, SCTP_CMD_UPDATE_INITTAG,
						FUNC8(inittag));
			}
		}

		FUNC10(commands, SCTP_CMD_REPLY, FUNC0(abort));
		FUNC3(SCTP_MIB_OUTCTRLCHUNKS);

		if (asoc->state <= SCTP_STATE_COOKIE_ECHOED) {
			FUNC10(commands, SCTP_CMD_TIMER_STOP,
					FUNC7(SCTP_EVENT_TIMEOUT_T1_INIT));
			FUNC10(commands, SCTP_CMD_SET_SK_ERR,
					FUNC2(ECONNREFUSED));
			FUNC10(commands, SCTP_CMD_INIT_FAILED,
					FUNC5(SCTP_ERROR_PROTO_VIOLATION));
		} else {
			FUNC10(commands, SCTP_CMD_SET_SK_ERR,
					FUNC2(ECONNABORTED));
			FUNC10(commands, SCTP_CMD_ASSOC_FAILED,
					FUNC5(SCTP_ERROR_PROTO_VIOLATION));
			FUNC1(SCTP_MIB_CURRESTAB);
		}
	} else {
		packet = FUNC15(asoc, chunk);

		if (!packet)
			goto nomem_pkt;

		if (FUNC18(abort))
			packet->vtag = FUNC9(chunk->sctp_hdr->vtag);

		abort->skb->sk = ep->base.sk;

		FUNC16(packet, abort);

		FUNC10(commands, SCTP_CMD_SEND_PKT,
			FUNC4(packet));

		FUNC3(SCTP_MIB_OUTCTRLCHUNKS);
	}

	FUNC3(SCTP_MIB_ABORTEDS);

discard:
	FUNC17(ep, asoc, FUNC6(0), arg, commands);
	return SCTP_DISPOSITION_ABORT;

nomem_pkt:
	FUNC12(abort);
nomem:
	return SCTP_DISPOSITION_NOMEM;
}