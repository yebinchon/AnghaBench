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
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_7__ {scalar_t__ dest; } ;
struct TYPE_6__ {scalar_t__ next_bb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC4 (rtx insn)
{
  basic_block bb = FUNC1 (insn);
  if ((insn == FUNC0 (bb)) && (bb->next_bb != EXIT_BLOCK_PTR))
    return FUNC2 (bb->next_bb);
  else
    return FUNC2 (FUNC3 (bb, insn)->dest);
}