#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  void* basic_block ;
struct TYPE_7__ {int flags; void* dest; void* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  n_edges ; 

edge
FUNC4 (basic_block src, basic_block dst, int flags)
{
  edge e;
  e = FUNC3 (sizeof (*e));
  n_edges++;

  e->src = src;
  e->dest = dst;
  e->flags = flags;

  FUNC1 (e);
  FUNC0 (e);

  FUNC2 (e);

  return e;
}