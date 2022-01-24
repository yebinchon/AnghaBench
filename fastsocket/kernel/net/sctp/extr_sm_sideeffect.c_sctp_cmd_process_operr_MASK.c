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
struct sctp_errhdr {int cause; scalar_t__ variable; } ;
struct sctp_chunk {scalar_t__ chunk_end; TYPE_1__* skb; } ;
struct TYPE_5__ {int /*<<< orphan*/  asconf_capable; } ;
struct sctp_association {TYPE_2__ peer; int /*<<< orphan*/  ulpq; } ;
typedef  int /*<<< orphan*/  sctp_cmd_seq_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ sctp_chunkhdr_t ;
struct TYPE_4__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  SCTP_CID_ASCONF 129 
 int /*<<< orphan*/  SCTP_CMD_TIMER_STOP ; 
#define  SCTP_ERROR_UNKNOWN_CHUNK 128 
 int /*<<< orphan*/  SCTP_EVENT_TIMEOUT_T4_RTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_ulpevent* FUNC2 (struct sctp_association*,struct sctp_chunk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sctp_ulpevent*) ; 

__attribute__((used)) static void FUNC4(sctp_cmd_seq_t *cmds,
				   struct sctp_association *asoc,
				   struct sctp_chunk *chunk)
{
	struct sctp_errhdr *err_hdr;
	struct sctp_ulpevent *ev;

	while (chunk->chunk_end > chunk->skb->data) {
		err_hdr = (struct sctp_errhdr *)(chunk->skb->data);

		ev = FUNC2(asoc, chunk, 0,
						     GFP_ATOMIC);
		if (!ev)
			return;

		FUNC3(&asoc->ulpq, ev);

		switch (err_hdr->cause) {
		case SCTP_ERROR_UNKNOWN_CHUNK:
		{
			sctp_chunkhdr_t *unk_chunk_hdr;

			unk_chunk_hdr = (sctp_chunkhdr_t *)err_hdr->variable;
			switch (unk_chunk_hdr->type) {
			/* ADDIP 4.1 A9) If the peer responds to an ASCONF with
			 * an ERROR chunk reporting that it did not recognized
			 * the ASCONF chunk type, the sender of the ASCONF MUST
			 * NOT send any further ASCONF chunks and MUST stop its
			 * T-4 timer.
			 */
			case SCTP_CID_ASCONF:
				if (asoc->peer.asconf_capable == 0)
					break;

				asoc->peer.asconf_capable = 0;
				FUNC1(cmds, SCTP_CMD_TIMER_STOP,
					FUNC0(SCTP_EVENT_TIMEOUT_T4_RTO));
				break;
			default:
				break;
			}
			break;
		}
		default:
			break;
		}
	}
}