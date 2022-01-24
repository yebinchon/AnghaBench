#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct sock {TYPE_5__* sk_prot_creator; } ;
struct sctp_tsnmap {int dummy; } ;
struct TYPE_21__ {TYPE_11__* data_hdr; } ;
struct sctp_chunk {int ecn_ce_done; int data_accepted; TYPE_8__* asoc; TYPE_6__* chunk_hdr; TYPE_12__* skb; TYPE_2__ subh; } ;
struct TYPE_28__ {scalar_t__ sinit_max_instreams; } ;
struct TYPE_23__ {int /*<<< orphan*/  pd_mode; } ;
struct TYPE_22__ {int /*<<< orphan*/  tsn_map; scalar_t__ ecn_capable; } ;
struct TYPE_20__ {struct sock* sk; } ;
struct sctp_association {size_t rwnd; size_t frag_point; TYPE_10__* ssnmap; TYPE_9__ c; scalar_t__ rwnd_over; TYPE_4__ ulpq; TYPE_3__ peer; TYPE_1__ base; } ;
struct sctp_af {scalar_t__ (* is_ce ) (TYPE_12__*) ;} ;
typedef  int /*<<< orphan*/  sctp_verb_t ;
struct TYPE_17__ {int /*<<< orphan*/  ssn; int /*<<< orphan*/  stream; int /*<<< orphan*/  tsn; } ;
typedef  TYPE_11__ sctp_datahdr_t ;
typedef  int /*<<< orphan*/  sctp_data_chunk_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_26__ {int /*<<< orphan*/  iodchunks; int /*<<< orphan*/  iuodchunks; int /*<<< orphan*/  outofseqtsns; } ;
struct TYPE_27__ {TYPE_7__ stats; } ;
struct TYPE_25__ {int flags; int /*<<< orphan*/  length; } ;
struct TYPE_24__ {scalar_t__* memory_pressure; } ;
struct TYPE_19__ {int /*<<< orphan*/  version; } ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_16__ {int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  SCTP_CMD_ASSOC_FAILED ; 
 int /*<<< orphan*/  SCTP_CMD_CHUNK_ULP ; 
 int /*<<< orphan*/  SCTP_CMD_DISCARD_PACKET ; 
 int /*<<< orphan*/  SCTP_CMD_ECN_CE ; 
 int /*<<< orphan*/  SCTP_CMD_PART_DELIVER ; 
 int /*<<< orphan*/  SCTP_CMD_RENEGE ; 
 int /*<<< orphan*/  SCTP_CMD_REPLY ; 
 int /*<<< orphan*/  SCTP_CMD_REPORT_DUP ; 
 int /*<<< orphan*/  SCTP_CMD_REPORT_TSN ; 
 int /*<<< orphan*/  SCTP_CMD_SET_SK_ERR ; 
 int SCTP_DATA_UNORDERED ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_ERROR_INV_STRM ; 
 int /*<<< orphan*/  SCTP_ERROR_NO_DATA ; 
 int SCTP_IERROR_BAD_STREAM ; 
 int SCTP_IERROR_DUP_TSN ; 
 int SCTP_IERROR_HIGH_TSN ; 
 int SCTP_IERROR_IGNORE_TSN ; 
 int SCTP_IERROR_NO_DATA ; 
 int SCTP_IERROR_NO_ERROR ; 
 int SCTP_IERROR_PROTO_VIOLATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_ABORTEDS ; 
 int /*<<< orphan*/  SCTP_MIB_CURRESTAB ; 
 int /*<<< orphan*/  SCTP_MIB_INORDERCHUNKS ; 
 int /*<<< orphan*/  SCTP_MIB_INUNORDERCHUNKS ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_14__* FUNC9 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_af* FUNC14 (int /*<<< orphan*/ ) ; 
 struct sctp_chunk* FUNC15 (struct sctp_association const*,struct sctp_chunk*,scalar_t__) ; 
 struct sctp_chunk* FUNC16 (struct sctp_association const*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC19 (struct sctp_tsnmap*) ; 
 scalar_t__ FUNC20 (struct sctp_tsnmap*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_12__*,int) ; 
 scalar_t__ FUNC22 (TYPE_12__*) ; 
 scalar_t__ FUNC23 (int) ; 

__attribute__((used)) static int FUNC24(const struct sctp_association *asoc,
			 struct sctp_chunk *chunk,
			 sctp_cmd_seq_t *commands)
{
	sctp_datahdr_t *data_hdr;
	struct sctp_chunk *err;
	size_t datalen;
	sctp_verb_t deliver;
	int tmp;
	__u32 tsn;
	struct sctp_tsnmap *map = (struct sctp_tsnmap *)&asoc->peer.tsn_map;
	struct sock *sk = asoc->base.sk;
	u16 ssn;
	u16 sid;
	u8 ordered = 0;

	data_hdr = chunk->subh.data_hdr = (sctp_datahdr_t *)chunk->skb->data;
	FUNC21(chunk->skb, sizeof(sctp_datahdr_t));

	tsn = FUNC11(data_hdr->tsn);
	FUNC1("eat_data: TSN 0x%x.\n", tsn);

	/* ASSERT:  Now skb->data is really the user data.  */

	/* Process ECN based congestion.
	 *
	 * Since the chunk structure is reused for all chunks within
	 * a packet, we use ecn_ce_done to track if we've already
	 * done CE processing for this packet.
	 *
	 * We need to do ECN processing even if we plan to discard the
	 * chunk later.
	 */

	if (!chunk->ecn_ce_done) {
		struct sctp_af *af;
		chunk->ecn_ce_done = 1;

		af = FUNC14(
			FUNC10(FUNC9(chunk->skb)->version));

		if (af && af->is_ce(chunk->skb) && asoc->peer.ecn_capable) {
			/* Do real work as sideffect. */
			FUNC13(commands, SCTP_CMD_ECN_CE,
					FUNC7(tsn));
		}
	}

	tmp = FUNC18(&asoc->peer.tsn_map, tsn);
	if (tmp < 0) {
		/* The TSN is too high--silently discard the chunk and
		 * count on it getting retransmitted later.
		 */
		if (chunk->asoc)
			chunk->asoc->stats.outofseqtsns++;
		return SCTP_IERROR_HIGH_TSN;
	} else if (tmp > 0) {
		/* This is a duplicate.  Record it.  */
		FUNC13(commands, SCTP_CMD_REPORT_DUP, FUNC7(tsn));
		return SCTP_IERROR_DUP_TSN;
	}

	/* This is a new TSN.  */

	/* Discard if there is no room in the receive window.
	 * Actually, allow a little bit of overflow (up to a MTU).
	 */
	datalen = FUNC12(chunk->chunk_hdr->length);
	datalen -= sizeof(sctp_data_chunk_t);

	deliver = SCTP_CMD_CHUNK_ULP;

	/* Think about partial delivery. */
	if ((datalen >= asoc->rwnd) && (!asoc->ulpq.pd_mode)) {

		/* Even if we don't accept this chunk there is
		 * memory pressure.
		 */
		FUNC13(commands, SCTP_CMD_PART_DELIVER, FUNC5());
	}

	/* Spill over rwnd a little bit.  Note: While allowed, this spill over
	 * seems a bit troublesome in that frag_point varies based on
	 * PMTU.  In cases, such as loopback, this might be a rather
	 * large spill over.
	 */
	if ((!chunk->data_accepted) && (!asoc->rwnd || asoc->rwnd_over ||
	    (datalen > asoc->rwnd + asoc->frag_point))) {

		/* If this is the next TSN, consider reneging to make
		 * room.   Note: Playing nice with a confused sender.  A
		 * malicious sender can still eat up all our buffer
		 * space and in the future we may want to detect and
		 * do more drastic reneging.
		 */
		if (FUNC20(map) &&
		    (FUNC19(map) + 1) == tsn) {
			FUNC1("Reneging for tsn:%u\n", tsn);
			deliver = SCTP_CMD_RENEGE;
		} else {
			FUNC1("Discard tsn: %u len: %Zd, "
					  "rwnd: %d\n", tsn, datalen,
					  asoc->rwnd);
			return SCTP_IERROR_IGNORE_TSN;
		}
	}

	/*
	 * Also try to renege to limit our memory usage in the event that
	 * we are under memory pressure
	 * If we can't renege, don't worry about it, the sk_rmem_schedule
	 * in sctp_ulpevent_make_rcvmsg will drop the frame if we grow our
	 * memory usage too much
	 */
	if (*sk->sk_prot_creator->memory_pressure) {
		if (FUNC20(map) &&
	           (FUNC19(map) + 1) == tsn) {
			FUNC1("Under Pressure! Reneging for tsn:%u\n", tsn);
			deliver = SCTP_CMD_RENEGE;
		 }
	}

	/*
	 * Section 3.3.10.9 No User Data (9)
	 *
	 * Cause of error
	 * ---------------
	 * No User Data:  This error cause is returned to the originator of a
	 * DATA chunk if a received DATA chunk has no user data.
	 */
	if (FUNC23(0 == datalen)) {
		err = FUNC15(asoc, chunk, tsn);
		if (err) {
			FUNC13(commands, SCTP_CMD_REPLY,
					FUNC0(err));
		}
		/* We are going to ABORT, so we might as well stop
		 * processing the rest of the chunks in the packet.
		 */
		FUNC13(commands, SCTP_CMD_DISCARD_PACKET,FUNC5());
		FUNC13(commands, SCTP_CMD_SET_SK_ERR,
				FUNC3(ECONNABORTED));
		FUNC13(commands, SCTP_CMD_ASSOC_FAILED,
				FUNC6(SCTP_ERROR_NO_DATA));
		FUNC4(SCTP_MIB_ABORTEDS);
		FUNC2(SCTP_MIB_CURRESTAB);
		return SCTP_IERROR_NO_DATA;
	}

	chunk->data_accepted = 1;

	/* Note: Some chunks may get overcounted (if we drop) or overcounted
	 * if we renege and the chunk arrives again.
	 */
	if (chunk->chunk_hdr->flags & SCTP_DATA_UNORDERED) {
		FUNC4(SCTP_MIB_INUNORDERCHUNKS);
		if (chunk->asoc)
			chunk->asoc->stats.iuodchunks++;
	} else {
		FUNC4(SCTP_MIB_INORDERCHUNKS);
		if (chunk->asoc)
			chunk->asoc->stats.iodchunks++;
		ordered = 1;
	}

	/* RFC 2960 6.5 Stream Identifier and Stream Sequence Number
	 *
	 * If an endpoint receive a DATA chunk with an invalid stream
	 * identifier, it shall acknowledge the reception of the DATA chunk
	 * following the normal procedure, immediately send an ERROR chunk
	 * with cause set to "Invalid Stream Identifier" (See Section 3.3.10)
	 * and discard the DATA chunk.
	 */
	sid = FUNC12(data_hdr->stream);
	if (sid >= asoc->c.sinit_max_instreams) {
		/* Mark tsn as received even though we drop it */
		FUNC13(commands, SCTP_CMD_REPORT_TSN, FUNC7(tsn));

		err = FUNC16(asoc, chunk, SCTP_ERROR_INV_STRM,
					 &data_hdr->stream,
					 sizeof(data_hdr->stream),
					 sizeof(u16));
		if (err)
			FUNC13(commands, SCTP_CMD_REPLY,
					FUNC0(err));
		return SCTP_IERROR_BAD_STREAM;
	}

	/* Check to see if the SSN is possible for this TSN.
	 * The biggest gap we can record is 4K wide.  Since SSNs wrap
	 * at an unsigned short, there is no way that an SSN can
	 * wrap and for a valid TSN.  We can simply check if the current
	 * SSN is smaller then the next expected one.  If it is, it wrapped
	 * and is invalid.
	 */
	ssn = FUNC12(data_hdr->ssn);
	if (ordered && FUNC8(ssn, FUNC17(&asoc->ssnmap->in, sid))) {
		return SCTP_IERROR_PROTO_VIOLATION;
	}

	/* Send the data up to the user.  Note:  Schedule  the
	 * SCTP_CMD_CHUNK_ULP cmd before the SCTP_CMD_GEN_SACK, as the SACK
	 * chunk needs the updated rwnd.
	 */
	FUNC13(commands, deliver, FUNC0(chunk));

	return SCTP_IERROR_NO_ERROR;
}