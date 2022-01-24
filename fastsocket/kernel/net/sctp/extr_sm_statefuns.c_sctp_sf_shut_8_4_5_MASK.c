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
struct sctp_packet {int /*<<< orphan*/  vtag; } ;
struct TYPE_6__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct sctp_chunk {TYPE_2__* skb; TYPE_1__* sctp_hdr; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  sctp_subtype_t ;
typedef  int /*<<< orphan*/  sctp_disposition_t ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
typedef  int /*<<< orphan*/  sctp_chunkhdr_t ;
struct TYPE_5__ {int /*<<< orphan*/  sk; } ;
struct TYPE_4__ {int /*<<< orphan*/  vtag; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCTP_CMD_SEND_PKT ; 
 int /*<<< orphan*/  SCTP_DISPOSITION_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_MIB_OUTCTRLCHUNKS ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_chunk*,int) ; 
 struct sctp_chunk* FUNC5 (struct sctp_association const*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_packet*) ; 
 struct sctp_packet* FUNC7 (struct sctp_association const*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_packet*,struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC9 (struct sctp_endpoint const*,struct sctp_association const*,int /*<<< orphan*/  const,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct sctp_chunk*) ; 

__attribute__((used)) static sctp_disposition_t FUNC11(const struct sctp_endpoint *ep,
					     const struct sctp_association *asoc,
					     const sctp_subtype_t type,
					     void *arg,
					     sctp_cmd_seq_t *commands)
{
	struct sctp_packet *packet = NULL;
	struct sctp_chunk *chunk = arg;
	struct sctp_chunk *shut;

	packet = FUNC7(asoc, chunk);

	if (packet) {
		/* Make an SHUTDOWN_COMPLETE.
		 * The T bit will be set if the asoc is NULL.
		 */
		shut = FUNC5(asoc, chunk);
		if (!shut) {
			FUNC6(packet);
			return SCTP_DISPOSITION_NOMEM;
		}

		/* Reflect vtag if T-Bit is set */
		if (FUNC10(shut))
			packet->vtag = FUNC2(chunk->sctp_hdr->vtag);

		/* Set the skb to the belonging sock for accounting.  */
		shut->skb->sk = ep->base.sk;

		FUNC8(packet, shut);

		FUNC3(commands, SCTP_CMD_SEND_PKT,
				FUNC1(packet));

		FUNC0(SCTP_MIB_OUTCTRLCHUNKS);

		/* If the chunk length is invalid, we don't want to process
		 * the reset of the packet.
		 */
		if (!FUNC4(chunk, sizeof(sctp_chunkhdr_t)))
			return FUNC9(ep, asoc, type, arg, commands);

		/* We need to discard the rest of the packet to prevent
		 * potential bomming attacks from additional bundled chunks.
		 * This is documented in SCTP Threats ID.
		 */
		return FUNC9(ep, asoc, type, arg, commands);
	}

	return SCTP_DISPOSITION_NOMEM;
}