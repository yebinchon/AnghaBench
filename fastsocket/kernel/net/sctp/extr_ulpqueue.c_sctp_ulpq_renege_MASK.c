#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sctp_ulpq {struct sctp_association* asoc; } ;
struct TYPE_9__ {TYPE_2__* data_hdr; } ;
struct sctp_chunk {int /*<<< orphan*/  transport; TYPE_3__ subh; TYPE_1__* chunk_hdr; } ;
struct TYPE_11__ {TYPE_6__* sk; } ;
struct TYPE_10__ {int /*<<< orphan*/  tsn_map; } ;
struct sctp_association {TYPE_5__ base; TYPE_4__ peer; } ;
typedef  int /*<<< orphan*/  sctp_data_chunk_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  scalar_t__ __u16 ;
struct TYPE_12__ {int /*<<< orphan*/  sk_receive_queue; } ;
struct TYPE_8__ {int /*<<< orphan*/  tsn; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ SCTP_DEFAULT_MAXWINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpq*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sctp_ulpq*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct sctp_ulpq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sctp_ulpq*,struct sctp_chunk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
		      gfp_t gfp)
{
	struct sctp_association *asoc;
	__u16 needed, freed;

	asoc = ulpq->asoc;

	if (chunk) {
		needed = FUNC1(chunk->chunk_hdr->length);
		needed -= sizeof(sctp_data_chunk_t);
	} else
		needed = SCTP_DEFAULT_MAXWINDOW;

	freed = 0;

	if (FUNC8(&asoc->base.sk->sk_receive_queue)) {
		freed = FUNC5(ulpq, needed);
		if (freed < needed) {
			freed += FUNC4(ulpq, needed - freed);
		}
	}
	/* If able to free enough room, accept this chunk. */
	if (chunk && (freed >= needed)) {
		__u32 tsn;
		tsn = FUNC0(chunk->subh.data_hdr->tsn);
		FUNC2(&asoc->peer.tsn_map, tsn, chunk->transport);
		FUNC6(ulpq, chunk, gfp);

		FUNC3(ulpq, chunk, gfp);
	}

	FUNC7(asoc->base.sk);
	return;
}