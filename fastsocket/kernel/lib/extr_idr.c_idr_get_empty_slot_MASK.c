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
struct idr_layer {int layer; scalar_t__ count; scalar_t__ bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int IDR_BITS ; 
 scalar_t__ IDR_FULL ; 
 int IDR_NEED_TO_GROW ; 
 int MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (struct idr*,struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct idr_layer* FUNC2 (struct idr*) ; 
 int /*<<< orphan*/  FUNC3 (struct idr_layer*,struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (struct idr*,int*,struct idr_layer**) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct idr *idp, int starting_id,
			      struct idr_layer **pa)
{
	struct idr_layer *p, *new;
	int layers, v, id;
	unsigned long flags;

	id = starting_id;
build_up:
	p = idp->top;
	layers = idp->layers;
	if (FUNC7(!p)) {
		if (!(p = FUNC2(idp)))
			return -1;
		p->layer = 0;
		layers = 1;
	}
	/*
	 * Add a new layer to the top of the tree if the requested
	 * id is larger than the currently allocated space.
	 */
	while ((layers < (MAX_LEVEL - 1)) && (id >= (1 << (layers*IDR_BITS)))) {
		layers++;
		if (!p->count) {
			/* special case: if the tree is currently empty,
			 * then we grow the tree by moving the top node
			 * upwards.
			 */
			p->layer++;
			continue;
		}
		if (!(new = FUNC2(idp))) {
			/*
			 * The allocation failed.  If we built part of
			 * the structure tear it down.
			 */
			FUNC4(&idp->lock, flags);
			for (new = p; p && p != idp->top; new = p) {
				p = p->ary[0];
				new->ary[0] = NULL;
				new->bitmap = new->count = 0;
				FUNC0(idp, new);
			}
			FUNC5(&idp->lock, flags);
			return -1;
		}
		new->ary[0] = p;
		new->count = 1;
		new->layer = layers-1;
		if (p->bitmap == IDR_FULL)
			FUNC1(0, &new->bitmap);
		p = new;
	}
	FUNC3(idp->top, p);
	idp->layers = layers;
	v = FUNC6(idp, &id, pa);
	if (v == IDR_NEED_TO_GROW)
		goto build_up;
	return(v);
}