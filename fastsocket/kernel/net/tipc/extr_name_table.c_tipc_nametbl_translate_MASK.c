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
typedef  int /*<<< orphan*/  u32 ;
struct sub_seq {struct publication* zone_list; struct publication* cluster_list; struct publication* node_list; } ;
struct publication {struct publication* zone_list_next; struct publication* cluster_list_next; struct publication* node_list_next; int /*<<< orphan*/  node; int /*<<< orphan*/  ref; } ;
struct name_seq {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 struct sub_seq* FUNC3 (struct name_seq*,int /*<<< orphan*/ ) ; 
 struct name_seq* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tipc_nametbl_lock ; 
 int /*<<< orphan*/  tipc_own_addr ; 
 scalar_t__ FUNC9 (int) ; 

u32 FUNC10(u32 type, u32 instance, u32 *destnode)
{
	struct sub_seq *sseq;
	struct publication *publ = NULL;
	struct name_seq *seq;
	u32 ref;

	if (!FUNC1(*destnode, tipc_own_addr))
		return 0;

	FUNC5(&tipc_nametbl_lock);
	seq = FUNC4(type);
	if (FUNC9(!seq))
		goto not_found;
	sseq = FUNC3(seq, instance);
	if (FUNC9(!sseq))
		goto not_found;
	FUNC7(&seq->lock);

	/* Closest-First Algorithm: */
	if (FUNC2(!*destnode)) {
		publ = sseq->node_list;
		if (publ) {
			sseq->node_list = publ->node_list_next;
found:
			ref = publ->ref;
			*destnode = publ->node;
			FUNC8(&seq->lock);
			FUNC6(&tipc_nametbl_lock);
			return ref;
		}
		publ = sseq->cluster_list;
		if (publ) {
			sseq->cluster_list = publ->cluster_list_next;
			goto found;
		}
		publ = sseq->zone_list;
		if (publ) {
			sseq->zone_list = publ->zone_list_next;
			goto found;
		}
	}

	/* Round-Robin Algorithm: */
	else if (*destnode == tipc_own_addr) {
		publ = sseq->node_list;
		if (publ) {
			sseq->node_list = publ->node_list_next;
			goto found;
		}
	} else if (FUNC0(*destnode)) {
		publ = sseq->cluster_list;
		if (publ) {
			sseq->cluster_list = publ->cluster_list_next;
			goto found;
		}
	} else {
		publ = sseq->zone_list;
		if (publ) {
			sseq->zone_list = publ->zone_list_next;
			goto found;
		}
	}
	FUNC8(&seq->lock);
not_found:
	*destnode = 0;
	FUNC6(&tipc_nametbl_lock);
	return 0;
}