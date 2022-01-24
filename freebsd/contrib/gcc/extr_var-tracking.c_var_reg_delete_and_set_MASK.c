#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_8__ {TYPE_2__** regs; } ;
typedef  TYPE_1__ dataflow_set ;
typedef  TYPE_2__* attrs ;
struct TYPE_9__ {scalar_t__ decl; scalar_t__ offset; struct TYPE_9__* next; int /*<<< orphan*/  loc; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  attrs_pool ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (dataflow_set *set, rtx loc, bool modify)
{
  tree decl = FUNC1 (loc);
  HOST_WIDE_INT offset = FUNC2 (loc);
  attrs node, next;
  attrs *nextp;

  decl = FUNC6 (decl);

  nextp = &set->regs[FUNC0 (loc)];
  for (node = *nextp; node; node = next)
    {
      next = node->next;
      if (node->decl != decl || node->offset != offset)
	{
	  FUNC4 (set, node->loc, node->decl, node->offset);
	  FUNC5 (attrs_pool, node);
	  *nextp = next;
	}
      else
	{
	  node->loc = loc;
	  nextp = &node->next;
	}
    }
  if (modify)
    FUNC3 (set, loc, decl, offset);
  FUNC7 (set, loc);
}