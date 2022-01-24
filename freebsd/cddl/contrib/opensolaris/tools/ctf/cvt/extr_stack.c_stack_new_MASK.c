#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int st_nument; int st_top; void (* st_free ) (void*) ;void* st_data; } ;
typedef  TYPE_1__ stk_t ;

/* Variables and functions */
 int STACK_SEEDSIZE ; 
 void* FUNC0 (int) ; 

stk_t *
FUNC1(void (*freep)(void *))
{
	stk_t *sp;

	sp = FUNC0(sizeof (stk_t));
	sp->st_nument = STACK_SEEDSIZE;
	sp->st_top = -1;
	sp->st_data = FUNC0(sizeof (void *) * sp->st_nument);
	sp->st_free = freep;

	return (sp);
}