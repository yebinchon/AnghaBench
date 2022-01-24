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
struct idr_layer {int /*<<< orphan*/ * ary; } ;
struct idr {int layers; int /*<<< orphan*/  top; } ;

/* Variables and functions */
 int IDR_BITS ; 
 int IDR_MASK ; 
 int MAX_LEVEL ; 
 int FUNC0 (int) ; 
 struct idr_layer* FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct idr *idp,
		 int (*fn)(int id, void *p, void *data), void *data)
{
	int n, id, max, error = 0;
	struct idr_layer *p;
	struct idr_layer *pa[MAX_LEVEL];
	struct idr_layer **paa = &pa[0];

	n = idp->layers * IDR_BITS;
	p = FUNC1(idp->top);
	max = 1 << n;

	id = 0;
	while (id < max) {
		while (n > 0 && p) {
			n -= IDR_BITS;
			*paa++ = p;
			p = FUNC1(p->ary[(id >> n) & IDR_MASK]);
		}

		if (p) {
			error = fn(id, (void *)p, data);
			if (error)
				break;
		}

		id += 1 << n;
		while (n < FUNC0(id)) {
			n += IDR_BITS;
			p = *--paa;
		}
	}

	return error;
}