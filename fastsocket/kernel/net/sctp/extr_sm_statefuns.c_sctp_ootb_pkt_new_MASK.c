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
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_transport {int /*<<< orphan*/  packet; } ;
struct sctp_packet {int dummy; } ;
struct sctp_chunk {int /*<<< orphan*/  dest; TYPE_6__* sctp_hdr; TYPE_4__* chunk_hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_11__ {TYPE_2__ i; } ;
struct sctp_association {TYPE_3__ peer; } ;
struct TYPE_9__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_15__ {TYPE_1__ init_hdr; } ;
typedef  TYPE_7__ sctp_initack_chunk_t ;
struct TYPE_13__ {int /*<<< orphan*/  init_tag; } ;
struct TYPE_16__ {TYPE_5__ init_hdr; } ;
typedef  TYPE_8__ sctp_init_chunk_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_14__ {int /*<<< orphan*/  vtag; int /*<<< orphan*/  source; int /*<<< orphan*/  dest; } ;
struct TYPE_12__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  SCTP_CID_INIT 129 
#define  SCTP_CID_INIT_ACK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sctp_packet* FUNC3 (struct sctp_packet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_packet* FUNC4 (int /*<<< orphan*/ *,struct sctp_transport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_chunk const*) ; 
 struct sctp_transport* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_transport*,union sctp_addr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_packet *FUNC9(const struct sctp_association *asoc,
					     const struct sctp_chunk *chunk)
{
	struct sctp_packet *packet;
	struct sctp_transport *transport;
	__u16 sport;
	__u16 dport;
	__u32 vtag;

	/* Get the source and destination port from the inbound packet.  */
	sport = FUNC1(chunk->sctp_hdr->dest);
	dport = FUNC1(chunk->sctp_hdr->source);

	/* The V-tag is going to be the same as the inbound packet if no
	 * association exists, otherwise, use the peer's vtag.
	 */
	if (asoc) {
		/* Special case the INIT-ACK as there is no peer's vtag
		 * yet.
		 */
		switch(chunk->chunk_hdr->type) {
		case SCTP_CID_INIT_ACK:
		{
			sctp_initack_chunk_t *initack;

			initack = (sctp_initack_chunk_t *)chunk->chunk_hdr;
			vtag = FUNC0(initack->init_hdr.init_tag);
			break;
		}
		default:
			vtag = asoc->peer.i.init_tag;
			break;
		}
	} else {
		/* Special case the INIT and stale COOKIE_ECHO as there is no
		 * vtag yet.
		 */
		switch(chunk->chunk_hdr->type) {
		case SCTP_CID_INIT:
		{
			sctp_init_chunk_t *init;

			init = (sctp_init_chunk_t *)chunk->chunk_hdr;
			vtag = FUNC0(init->init_hdr.init_tag);
			break;
		}
		default:
			vtag = FUNC0(chunk->sctp_hdr->vtag);
			break;
		}
	}

	/* Make a transport for the bucket, Eliza... */
	transport = FUNC7(FUNC6(chunk), GFP_ATOMIC);
	if (!transport)
		goto nomem;

	/* Cache a route for the transport with the chunk's destination as
	 * the source address.
	 */
	FUNC8(transport, (union sctp_addr *)&chunk->dest,
			     FUNC5(FUNC2()));

	packet = FUNC4(&transport->packet, transport, sport, dport);
	packet = FUNC3(packet, vtag, 0);

	return packet;

nomem:
	return NULL;
}