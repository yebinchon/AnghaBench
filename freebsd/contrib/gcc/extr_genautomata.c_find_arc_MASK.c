#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ state_t ;
typedef  TYPE_1__* arc_t ;
typedef  scalar_t__ ainsn_t ;
struct TYPE_6__ {scalar_t__ to_state; scalar_t__ insn; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static arc_t
FUNC2 (state_t from_state, state_t to_state, ainsn_t insn)
{
  arc_t arc;

  for (arc = FUNC0 (from_state); arc != NULL; arc = FUNC1 (arc))
    if (arc->to_state == to_state && arc->insn == insn)
      return arc;
  return NULL;
}