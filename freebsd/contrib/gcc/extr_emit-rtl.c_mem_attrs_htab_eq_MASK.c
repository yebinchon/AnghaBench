#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ alias; scalar_t__ offset; scalar_t__ size; scalar_t__ align; scalar_t__ expr; } ;
typedef  TYPE_1__ mem_attrs ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (const void *x, const void *y)
{
  mem_attrs *p = (mem_attrs *) x;
  mem_attrs *q = (mem_attrs *) y;

  return (p->alias == q->alias && p->offset == q->offset
	  && p->size == q->size && p->align == q->align
	  && (p->expr == q->expr
	      || (p->expr != NULL_TREE && q->expr != NULL_TREE
		  && FUNC0 (p->expr, q->expr, 0))));
}