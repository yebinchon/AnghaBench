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
struct idr_layer {struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; } ;

/* Variables and functions */
 int IDR_BITS ; 
 int IDR_MASK ; 
 int MAX_LEVEL ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC2 (struct idr_layer*,int /*<<< orphan*/ *) ; 

void FUNC3(struct idr *idp)
{
	int n, id, max;
	struct idr_layer *p;
	struct idr_layer *pa[MAX_LEVEL];
	struct idr_layer **paa = &pa[0];

	n = idp->layers * IDR_BITS;
	p = idp->top;
	FUNC2(idp->top, NULL);
	max = 1 << n;

	id = 0;
	while (id < max) {
		while (n > IDR_BITS && p) {
			n -= IDR_BITS;
			*paa++ = p;
			p = p->ary[(id >> n) & IDR_MASK];
		}

		id += 1 << n;
		while (n < FUNC0(id)) {
			if (p)
				FUNC1(p);
			n += IDR_BITS;
			p = *--paa;
		}
	}
	idp->layers = 0;
}