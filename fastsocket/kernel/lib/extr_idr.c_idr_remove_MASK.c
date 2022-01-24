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
struct idr_layer {int count; int bitmap; struct idr_layer** ary; } ;
struct idr {int layers; scalar_t__ id_free_cnt; struct idr_layer* top; } ;

/* Variables and functions */
 int IDR_BITS ; 
 scalar_t__ IDR_FREE_MAX ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct idr_layer*) ; 
 struct idr_layer* FUNC1 (struct idr*) ; 
 int /*<<< orphan*/  idr_layer_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC3 (struct idr_layer*,struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC4 (struct idr*,int,int) ; 

void FUNC5(struct idr *idp, int id)
{
	struct idr_layer *p;
	struct idr_layer *to_free;

	/* Mask off upper bits we don't use for the search. */
	id &= MAX_ID_MASK;

	FUNC4(idp, (idp->layers - 1) * IDR_BITS, id);
	if (idp->top && idp->top->count == 1 && (idp->layers > 1) &&
	    idp->top->ary[0]) {
		/*
		 * Single child at leftmost slot: we can shrink the tree.
		 * This level is not needed anymore since when layers are
		 * inserted, they are inserted at the top of the existing
		 * tree.
		 */
		to_free = idp->top;
		p = idp->top->ary[0];
		FUNC3(idp->top, p);
		--idp->layers;
		to_free->bitmap = to_free->count = 0;
		FUNC0(to_free);
	}
	while (idp->id_free_cnt >= IDR_FREE_MAX) {
		p = FUNC1(idp);
		/*
		 * Note: we don't call the rcu callback here, since the only
		 * layers that fall into the freelist are those that have been
		 * preallocated.
		 */
		FUNC2(idr_layer_cache, p);
	}
	return;
}