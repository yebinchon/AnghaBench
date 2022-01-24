#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_slot_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (tree fndecl, rtx insn)
{
  tree decl;

  /* Make sure that virtual parameters are not shared.  */
  for (decl = FUNC0 (fndecl); decl; decl = FUNC4 (decl))
    FUNC3 (decl, FUNC5 (FUNC2 (decl)));

  /* Make sure that virtual stack slots are not shared.  */
  FUNC6 (FUNC1 (fndecl));

  /* Unshare just about everything else.  */
  FUNC7 (insn);

  /* Make sure the addresses of stack slots found outside the insn chain
     (such as, in DECL_RTL of a variable) are not shared
     with the insn chain.

     This special care is necessary when the stack slot MEM does not
     actually appear in the insn chain.  If it does appear, its address
     is unshared from all else at that point.  */
  stack_slot_list = FUNC5 (stack_slot_list);
}