#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  scalar_t__ rtx ;
struct TYPE_2__ {int /*<<< orphan*/  decl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_slot_list ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC12 (rtx insn)
{
  rtx p;
  tree decl;

  for (p = insn; p; p = FUNC5 (p))
    if (FUNC3 (p))
      {
	FUNC10 (FUNC6 (p));
	FUNC10 (FUNC7 (p));
	FUNC10 (FUNC4 (p));
      }

  /* Make sure that virtual stack slots are not shared.  */
  FUNC9 (FUNC1 (cfun->decl));

  /* Make sure that virtual parameters are not shared.  */
  for (decl = FUNC0 (cfun->decl); decl; decl = FUNC8 (decl))
    FUNC10 (FUNC2 (decl));

  FUNC10 (stack_slot_list);

  FUNC11 (cfun->decl, insn);
}