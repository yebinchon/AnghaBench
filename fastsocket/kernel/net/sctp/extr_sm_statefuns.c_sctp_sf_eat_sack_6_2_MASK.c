#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sctp_endpoint {int dummy; } ;
struct TYPE_5__ {TYPE_2__* sack_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int /*<<< orphan*/  next_tsn; int /*<<< orphan*/  ctsn_ack_point; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_6__ {int /*<<< orphan*/  cum_tsn_ack; } ;
typedef  TYPE_2__ sctp_sackhdr_t ;
typedef  int /*<<< orphan*/  sctp_sack_chunk_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_PROCESS_SACK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DISCARD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC10 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC11(const struct sctp_endpoint *ep,
					const struct sctp_association *asoc,
					const sctp_subtype_t type,
					void *arg,
					sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	sctp_sackhdr_t *sackh;
	__u32 ctsn;

	if (!FUNC10(chunk, asoc))
		return FUNC6(ep, asoc, type, arg, commands);

	/* Make sure that the SACK chunk has a valid length. */
	if (!FUNC5(chunk, sizeof(sctp_sack_chunk_t)))
		return FUNC7(ep, asoc, type, arg,
						  commands);

	/* Pull the SACK chunk from the data buffer */
	sackh = FUNC9(chunk);
	/* Was this a bogus SACK? */
	if (!sackh)
		return FUNC6(ep, asoc, type, arg, commands);
	chunk->subh.sack_hdr = sackh;
	ctsn = FUNC3(sackh->cum_tsn_ack);

	/* i) If Cumulative TSN Ack is less than the Cumulative TSN
	 *     Ack Point, then drop the SACK.  Since Cumulative TSN
	 *     Ack is monotonically increasing, a SACK whose
	 *     Cumulative TSN Ack is less than the Cumulative TSN Ack
	 *     Point indicates an out-of-order SACK.
	 */
	if (FUNC2(ctsn, asoc->ctsn_ack_point)) {
		FUNC0("ctsn %x\n", ctsn);
		FUNC0("ctsn_ack_point %x\n", asoc->ctsn_ack_point);
		return SCTP_DISPOSITION_DISCARD;
	}

	/* If Cumulative TSN Ack beyond the max tsn currently
	 * send, terminating the association and respond to the
	 * sender with an ABORT.
	 */
	if (!FUNC2(ctsn, asoc->next_tsn))
		return FUNC8(ep, asoc, type, arg, commands);

	/* Return this SACK for further processing.  */
	FUNC4(commands, SCTP_CMD_PROCESS_SACK, FUNC1(sackh));

	/* Note: We do the rest of the work on the PROCESS_SACK
	 * sideeffect.
	 */
	return SCTP_DISPOSITION_CONSUME;
}