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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_7__ {TYPE_2__** regs; } ;
typedef  TYPE_1__ dataflow_set ;
typedef  TYPE_2__* attrs ;
struct TYPE_8__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  decl; int /*<<< orphan*/  loc; struct TYPE_8__* next; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  attrs_pool ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (dataflow_set *set, rtx loc, bool clobber)
{
  attrs *reg = &set->regs[FUNC0 (loc)];
  attrs node, next;

  if (clobber)
    {
      tree decl = FUNC1 (loc);
      HOST_WIDE_INT offset = FUNC2 (loc);

      decl = FUNC6 (decl);

      FUNC3 (set, NULL, decl, offset);
    }

  for (node = *reg; node; node = next)
    {
      next = node->next;
      FUNC4 (set, node->loc, node->decl, node->offset);
      FUNC5 (attrs_pool, node);
    }
  *reg = NULL;
}