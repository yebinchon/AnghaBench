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
struct idr_layer {int layer; int /*<<< orphan*/ * ary; } ;
struct idr {int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IDR_BITS ; 
 int IDR_MASK ; 
 int MAX_ID_MASK ; 
 struct idr_layer* FUNC1 (int /*<<< orphan*/ ) ; 

void *FUNC2(struct idr *idp, int id)
{
	int n;
	struct idr_layer *p;

	p = FUNC1(idp->top);
	if (!p)
		return NULL;
	n = (p->layer+1) * IDR_BITS;

	/* Mask off upper bits we don't use for the search. */
	id &= MAX_ID_MASK;

	if (id >= (1 << n))
		return NULL;
	FUNC0(n == 0);

	while (n > 0 && p) {
		n -= IDR_BITS;
		FUNC0(n != p->layer*IDR_BITS);
		p = FUNC1(p->ary[(id >> n) & IDR_MASK]);
	}
	return((void *)p);
}