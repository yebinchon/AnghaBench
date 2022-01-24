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
struct idr_layer {int /*<<< orphan*/  count; struct idr_layer** ary; int /*<<< orphan*/  bitmap; } ;
struct idr {scalar_t__ layers; struct idr_layer* top; } ;

/* Variables and functions */
 scalar_t__ IDR_BITS ; 
 int IDR_MASK ; 
 int MAX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct idr_layer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct idr_layer*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct idr *idp, int shift, int id)
{
	struct idr_layer *p = idp->top;
	struct idr_layer **pa[MAX_LEVEL];
	struct idr_layer ***paa = &pa[0];
	struct idr_layer *to_free;
	int n;

	*paa = NULL;
	*++paa = &idp->top;

	while ((shift > 0) && p) {
		n = (id >> shift) & IDR_MASK;
		FUNC0(n, &p->bitmap);
		*++paa = &p->ary[n];
		p = p->ary[n];
		shift -= IDR_BITS;
	}
	n = id & IDR_MASK;
	if (FUNC3(p != NULL && FUNC5(n, &p->bitmap))){
		FUNC0(n, &p->bitmap);
		FUNC4(p->ary[n], NULL);
		to_free = NULL;
		while(*paa && ! --((**paa)->count)){
			if (to_free)
				FUNC1(to_free);
			to_free = **paa;
			**paa-- = NULL;
		}
		if (!*paa)
			idp->layers = 0;
		if (to_free)
			FUNC1(to_free);
	} else
		FUNC2(id);
}