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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  n_mos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

__attribute__((used)) static int
FUNC10 (rtx *loc, void *insn)
{
  basic_block bb = FUNC0 ((rtx) insn);

  if (FUNC5 (*loc))
    {
      FUNC7 (FUNC4 (*loc) < FIRST_PSEUDO_REGISTER);
      FUNC6 (bb)->n_mos++;
    }
  else if (FUNC3 (*loc)
	   && FUNC2 (*loc)
	   && FUNC9 (FUNC2 (*loc))
	   && FUNC8 (FUNC1 (*loc)))
    {
      FUNC6 (bb)->n_mos++;
    }

  return 0;
}