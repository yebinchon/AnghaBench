#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ X_op; int /*<<< orphan*/ * X_add_symbol; } ;
struct TYPE_5__ {int pc_rel; TYPE_1__ exp; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {TYPE_2__ reloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAD_BRANCH ; 
 int /*<<< orphan*/  BFD_RELOC_THUMB_PCREL_BRANCH23 ; 
 scalar_t__ O_symbol ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int current_it_mask ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__ inst ; 

__attribute__((used)) static void
FUNC4 (void)
{
  FUNC2 (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  inst.reloc.type   = BFD_RELOC_THUMB_PCREL_BRANCH23;
  inst.reloc.pc_rel = 1;

  /* If the destination of the branch is a defined symbol which does not have
     the THUMB_FUNC attribute, then we must be calling a function which has
     the (interfacearm) attribute.  We look for the Thumb entry point to that
     function and change the branch to refer to that function instead.	*/
  if (	 inst.reloc.exp.X_op == O_symbol
      && inst.reloc.exp.X_add_symbol != NULL
      && FUNC0 (inst.reloc.exp.X_add_symbol)
      && ! FUNC1 (inst.reloc.exp.X_add_symbol))
    inst.reloc.exp.X_add_symbol =
      FUNC3 (inst.reloc.exp.X_add_symbol);
}