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
struct TYPE_6__ {TYPE_2__** regs; } ;
typedef  TYPE_1__ dataflow_set ;
typedef  TYPE_2__* attrs ;
struct TYPE_7__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  decl; int /*<<< orphan*/  loc; struct TYPE_7__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  attrs_pool ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC2 (dataflow_set *set, int regno)
{
  attrs *reg = &set->regs[regno];
  attrs node, next;

  for (node = *reg; node; node = next)
    {
      next = node->next;
      FUNC0 (set, node->loc, node->decl, node->offset);
      FUNC1 (attrs_pool, node);
    }
  *reg = NULL;
}