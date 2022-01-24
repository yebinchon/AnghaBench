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
struct sctp_shutdown_chunk_t {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_association {int /*<<< orphan*/  next_tsn; int /*<<< orphan*/  ctsn_ack_point; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
struct TYPE_4__ {int /*<<< orphan*/  cum_tsn_ack; } ;
typedef  TYPE_2__ sctp_shutdownhdr_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_3__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_CMD_PROCESS_CTSN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_CONSUME ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_DISCARD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_chunk*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_chunk*,struct sctp_association const*) ; 

sctp_disposition_t FUNC10(const struct sctp_endpoint *ep,
					   const struct sctp_association *asoc,
					   const sctp_subtype_t type,
					   void *arg,
					   sctp_cmd_seq_t *commands)
{
	struct sctp_chunk *chunk = arg;
	sctp_shutdownhdr_t *sdh;
	__u32 ctsn;

	if (!FUNC9(chunk, asoc))
		return FUNC6(ep, asoc, type, arg, commands);

	/* Make sure that the SHUTDOWN chunk has a valid length. */
	if (!FUNC5(chunk,
				      sizeof(struct sctp_shutdown_chunk_t)))
		return FUNC7(ep, asoc, type, arg,
						  commands);

	sdh = (sctp_shutdownhdr_t *)chunk->skb->data;
	ctsn = FUNC3(sdh->cum_tsn_ack);

	if (FUNC2(ctsn, asoc->ctsn_ack_point)) {
		FUNC1("ctsn %x\n", ctsn);
		FUNC1("ctsn_ack_point %x\n", asoc->ctsn_ack_point);
		return SCTP_DISPOSITION_DISCARD;
	}

	/* If Cumulative TSN Ack beyond the max tsn currently
	 * send, terminating the association and respond to the
	 * sender with an ABORT.
	 */
	if (!FUNC2(ctsn, asoc->next_tsn))
		return FUNC8(ep, asoc, type, arg, commands);

	/* verify, by checking the Cumulative TSN Ack field of the
	 * chunk, that all its outstanding DATA chunks have been
	 * received by the SHUTDOWN sender.
	 */
	FUNC4(commands, SCTP_CMD_PROCESS_CTSN,
			FUNC0(sdh->cum_tsn_ack));

	return SCTP_DISPOSITION_CONSUME;
}