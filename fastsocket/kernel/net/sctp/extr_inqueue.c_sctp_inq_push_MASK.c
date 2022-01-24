#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* func ) (TYPE_4__*) ;} ;
struct sctp_inq {TYPE_4__ immediate; int /*<<< orphan*/  in_chunk_list; } ;
struct sctp_chunk {TYPE_3__* asoc; int /*<<< orphan*/  list; TYPE_1__* rcvr; } ;
struct TYPE_6__ {int /*<<< orphan*/  ipackets; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct TYPE_5__ {scalar_t__ dead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sctp_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 

void FUNC3(struct sctp_inq *q, struct sctp_chunk *chunk)
{
	/* Directly call the packet handling routine. */
	if (chunk->rcvr->dead) {
		FUNC1(chunk);
		return;
	}

	/* We are now calling this either from the soft interrupt
	 * or from the backlog processing.
	 * Eventually, we should clean up inqueue to not rely
	 * on the BH related data structures.
	 */
	FUNC0(&chunk->list, &q->in_chunk_list);
	if (chunk->asoc)
		chunk->asoc->stats.ipackets++;
	q->immediate.func(&q->immediate);
}