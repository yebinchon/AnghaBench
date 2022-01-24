#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sctp_packet {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  v; } ;
struct TYPE_7__ {int /*<<< orphan*/ * init_hdr; } ;
struct sctp_chunk {TYPE_4__* chunk_hdr; TYPE_5__* skb; TYPE_3__ param_hdr; TYPE_2__ subh; TYPE_1__* sctp_hdr; int /*<<< orphan*/  singleton; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_unrecognized_param_t ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_inithdr_t ;
typedef  int /*<<< orphan*/  sctp_init_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ vtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  COOKIE_WAIT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_DELETE_TCB ; 
 int /*<<< orphan*/  SCTP_CMD_NEW_ASOC ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_packet*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sctp_packet* FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_chunk*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sctp_association*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_association*) ; 
 int /*<<< orphan*/  FUNC11 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC12 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC13 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,int) ; 
 struct sctp_association* FUNC14 (struct sctp_endpoint const*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sctp_association*,struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC22 (struct sctp_association const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sctp_association*,struct sctp_association const*) ; 
 int /*<<< orphan*/  FUNC24 (struct sctp_association const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sctp_chunk*,struct sctp_chunk**) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_5__*,int) ; 

__attribute__((used)) static sctp_disposition_t FUNC26(
	const struct sctp_endpoint *ep,
	const struct sctp_association *asoc,
	const sctp_subtype_t type,
	void *arg, sctp_cmd_seq_t *commands)
{
	sctp_disposition_t retval;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *repl;
	struct sctp_association *new_asoc;
	struct sctp_chunk *err_chunk;
	struct sctp_packet *packet;
	sctp_unrecognized_param_t *unk_param;
	int len;

	/* 6.10 Bundling
	 * An endpoint MUST NOT bundle INIT, INIT ACK or
	 * SHUTDOWN COMPLETE with any other chunks.
	 *
	 * IG Section 2.11.2
	 * Furthermore, we require that the receiver of an INIT chunk MUST
	 * enforce these rules by silently discarding an arriving packet
	 * with an INIT chunk that is bundled with other chunks.
	 */
	if (!chunk->singleton)
		return FUNC18(ep, asoc, type, arg, commands);

	/* 3.1 A packet containing an INIT chunk MUST have a zero Verification
	 * Tag.
	 */
	if (chunk->sctp_hdr->vtag != 0)
		return FUNC19(ep, asoc, type, arg, commands);

	/* Make sure that the INIT chunk has a valid length.
	 * In this case, we generate a protocol violation since we have
	 * an association established.
	 */
	if (!FUNC12(chunk, sizeof(sctp_init_chunk_t)))
		return FUNC20(ep, asoc, type, arg,
						  commands);
	/* Grab the INIT header.  */
	chunk->subh.init_hdr = (sctp_inithdr_t *) chunk->skb->data;

	/* Tag the variable length parameters.  */
	chunk->param_hdr.v = FUNC25(chunk->skb, sizeof(sctp_inithdr_t));

	/* Verify the INIT chunk before processing it. */
	err_chunk = NULL;
	if (!FUNC24(asoc, chunk->chunk_hdr->type,
			      (sctp_init_chunk_t *)chunk->chunk_hdr, chunk,
			      &err_chunk)) {
		/* This chunk contains fatal error. It is to be discarded.
		 * Send an ABORT, with causes if there is any.
		 */
		if (err_chunk) {
			packet = FUNC6(ep, asoc, arg,
					(__u8 *)(err_chunk->chunk_hdr) +
					sizeof(sctp_chunkhdr_t),
					FUNC5(err_chunk->chunk_hdr->length) -
					sizeof(sctp_chunkhdr_t));

			if (packet) {
				FUNC7(commands, SCTP_CMD_SEND_PKT,
						FUNC4(packet));
				FUNC2(SCTP_MIB_OUTCTRLCHUNKS);
				retval = SCTP_DISPOSITION_CONSUME;
			} else {
				retval = SCTP_DISPOSITION_NOMEM;
			}
			goto cleanup;
		} else {
			return FUNC19(ep, asoc, type, arg,
						    commands);
		}
	}

	/*
	 * Other parameters for the endpoint SHOULD be copied from the
	 * existing parameters of the association (e.g. number of
	 * outbound streams) into the INIT ACK and cookie.
	 * FIXME:  We are copying parameters from the endpoint not the
	 * association.
	 */
	new_asoc = FUNC14(ep, chunk, GFP_ATOMIC);
	if (!new_asoc)
		goto nomem;

	if (FUNC9(new_asoc,
				FUNC16(FUNC21(chunk)), GFP_ATOMIC) < 0)
		goto nomem;

	/* In the outbound INIT ACK the endpoint MUST copy its current
	 * Verification Tag and Peers Verification tag into a reserved
	 * place (local tie-tag and per tie-tag) within the state cookie.
	 */
	if (!FUNC15(new_asoc, chunk, FUNC21(chunk),
			       (sctp_init_chunk_t *)chunk->chunk_hdr,
			       GFP_ATOMIC))
		goto nomem;

	/* Make sure no new addresses are being added during the
	 * restart.   Do not do this check for COOKIE-WAIT state,
	 * since there are no peer addresses to check against.
	 * Upon return an ABORT will have been sent if needed.
	 */
	if (!FUNC22(asoc, COOKIE_WAIT)) {
		if (!FUNC17(new_asoc, asoc, chunk,
						 commands)) {
			retval = SCTP_DISPOSITION_CONSUME;
			goto nomem_retval;
		}
	}

	FUNC23(new_asoc, asoc);

	/* B) "Z" shall respond immediately with an INIT ACK chunk.  */

	/* If there are errors need to be reported for unknown parameters,
	 * make sure to reserve enough room in the INIT ACK for them.
	 */
	len = 0;
	if (err_chunk) {
		len = FUNC5(err_chunk->chunk_hdr->length) -
			sizeof(sctp_chunkhdr_t);
	}

	repl = FUNC13(new_asoc, chunk, GFP_ATOMIC, len);
	if (!repl)
		goto nomem;

	/* If there are errors need to be reported for unknown parameters,
	 * include them in the outgoing INIT ACK as "Unrecognized parameter"
	 * parameter.
	 */
	if (err_chunk) {
		/* Get the "Unrecognized parameter" parameter(s) out of the
		 * ERROR chunk generated by sctp_verify_init(). Since the
		 * error cause code for "unknown parameter" and the
		 * "Unrecognized parameter" type is the same, we can
		 * construct the parameters in INIT ACK by copying the
		 * ERROR causes over.
		 */
		unk_param = (sctp_unrecognized_param_t *)
			    ((__u8 *)(err_chunk->chunk_hdr) +
			    sizeof(sctp_chunkhdr_t));
		/* Replace the cause code with the "Unrecognized parameter"
		 * parameter type.
		 */
		FUNC8(repl, len, unk_param);
	}

	FUNC7(commands, SCTP_CMD_NEW_ASOC, FUNC0(new_asoc));
	FUNC7(commands, SCTP_CMD_REPLY, FUNC1(repl));

	/*
	 * Note: After sending out INIT ACK with the State Cookie parameter,
	 * "Z" MUST NOT allocate any resources for this new association.
	 * Otherwise, "Z" will be vulnerable to resource attacks.
	 */
	FUNC7(commands, SCTP_CMD_DELETE_TCB, FUNC3());
	retval = SCTP_DISPOSITION_CONSUME;

	return retval;

nomem:
	retval = SCTP_DISPOSITION_NOMEM;
nomem_retval:
	if (new_asoc)
		FUNC10(new_asoc);
cleanup:
	if (err_chunk)
		FUNC11(err_chunk);
	return retval;
}