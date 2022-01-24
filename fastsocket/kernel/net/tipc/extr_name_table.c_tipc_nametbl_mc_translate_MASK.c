#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sub_seq {scalar_t__ lower; scalar_t__ cluster_list_size; scalar_t__ node_list_size; struct publication* node_list; } ;
struct publication {scalar_t__ scope; struct publication* node_list_next; int /*<<< orphan*/  ref; } ;
struct port_list {int dummy; } ;
struct name_seq {int first_free; int /*<<< orphan*/  lock; struct sub_seq* sseqs; } ;

/* Variables and functions */
 int FUNC0 (struct name_seq*,scalar_t__) ; 
 struct name_seq* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  FUNC6 (struct port_list*,int /*<<< orphan*/ ) ; 

int FUNC7(u32 type, u32 lower, u32 upper, u32 limit,
			      struct port_list *dports)
{
	struct name_seq *seq;
	struct sub_seq *sseq;
	struct sub_seq *sseq_stop;
	int res = 0;

	FUNC2(&tipc_nametbl_lock);
	seq = FUNC1(type);
	if (!seq)
		goto exit;

	FUNC4(&seq->lock);

	sseq = seq->sseqs + FUNC0(seq, lower);
	sseq_stop = seq->sseqs + seq->first_free;
	for (; sseq != sseq_stop; sseq++) {
		struct publication *publ;

		if (sseq->lower > upper)
			break;

		publ = sseq->node_list;
		if (publ) {
			do {
				if (publ->scope <= limit)
					FUNC6(dports, publ->ref);
				publ = publ->node_list_next;
			} while (publ != sseq->node_list);
		}

		if (sseq->cluster_list_size != sseq->node_list_size)
			res = 1;
	}

	FUNC5(&seq->lock);
exit:
	FUNC3(&tipc_nametbl_lock);
	return res;
}