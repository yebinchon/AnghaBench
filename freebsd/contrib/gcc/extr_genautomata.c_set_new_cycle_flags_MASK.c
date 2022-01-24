#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state_t ;
typedef  TYPE_3__* arc_t ;
struct TYPE_9__ {TYPE_2__* to_state; TYPE_1__* insn; } ;
struct TYPE_8__ {int new_cycle_p; } ;
struct TYPE_7__ {scalar_t__ insn_reserv_decl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  advance_cycle_insn_decl ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC3 (state_t state)
{
  arc_t arc;

  for (arc = FUNC1 (state); arc != NULL; arc = FUNC2 (arc))
    if (arc->insn->insn_reserv_decl
	== FUNC0 (advance_cycle_insn_decl))
      arc->to_state->new_cycle_p = 1;
}