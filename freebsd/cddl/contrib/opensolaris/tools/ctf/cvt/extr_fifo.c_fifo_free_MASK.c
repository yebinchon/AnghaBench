#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* fn_data; struct TYPE_5__* fn_next; struct TYPE_5__* f_head; } ;
typedef  TYPE_1__ fifonode_t ;
typedef  TYPE_1__ fifo_t ;

/* Variables and functions */
 void FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void FUNC2 (void*) ; 

void
FUNC3(fifo_t *f, void (*freefn)(void *))
{
	fifonode_t *fn = f->f_head;
	fifonode_t *tmp;

	if (freefn == NULL)
		freefn = fifo_nullfree;

	while (fn) {
		(*freefn)(fn->fn_data);

		tmp = fn;
		fn = fn->fn_next;
		FUNC1(tmp);
	}

	FUNC1(f);
}