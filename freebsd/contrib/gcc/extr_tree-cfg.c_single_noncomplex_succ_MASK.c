#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {int /*<<< orphan*/  succs; } ;
struct TYPE_7__ {int flags; TYPE_2__* dest; } ;

/* Variables and functions */
 int EDGE_COMPLEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 

basic_block
FUNC2 (basic_block bb)
{
  edge e0, e1;
  if (FUNC0 (bb->succs) != 2)
    return bb;

  e0 = FUNC1 (bb, 0);
  e1 = FUNC1 (bb, 1);
  if (e0->flags & EDGE_COMPLEX)
    return e1->dest;
  if (e1->flags & EDGE_COMPLEX)
    return e0->dest;

  return bb;
}