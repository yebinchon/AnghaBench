#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_6__ {TYPE_2__** regs; } ;
typedef  TYPE_1__ dataflow_set ;
typedef  TYPE_2__* attrs ;
struct TYPE_7__ {scalar_t__ decl; scalar_t__ offset; struct TYPE_7__* next; } ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (dataflow_set *set, rtx loc)
{
  tree decl = FUNC1 (loc);
  HOST_WIDE_INT offset = FUNC2 (loc);
  attrs node;

  decl = FUNC5 (decl);

  for (node = set->regs[FUNC0 (loc)]; node; node = node->next)
    if (node->decl == decl && node->offset == offset)
      break;
  if (!node)
    FUNC3 (&set->regs[FUNC0 (loc)], decl, offset, loc);
  FUNC4 (set, loc, decl, offset);
}