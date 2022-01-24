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
struct symtab_and_line {int /*<<< orphan*/  end; } ;
struct symbol {int dummy; } ;
struct minimal_symbol {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STEP_OVER_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct symbol* FUNC5 (int /*<<< orphan*/ ) ; 
 struct symtab_and_line FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct frame_info* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct frame_info*) ; 
 struct minimal_symbol* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  step_frame_id ; 
 scalar_t__ step_multi ; 
 int /*<<< orphan*/  step_over_calls ; 
 int /*<<< orphan*/  step_range_end ; 
 int /*<<< orphan*/  step_range_start ; 
 int /*<<< orphan*/  step_sp ; 

__attribute__((used)) static void
FUNC13 (int from_tty)
{
  struct frame_info *frame;
  CORE_ADDR pc;
  struct symbol *func;
  struct symtab_and_line sal;

  FUNC3 ();

  frame = FUNC7 ();

  /* Step until either exited from this function or greater
     than the current line (if in symbolic section) or pc (if
     not). */

  pc = FUNC11 ();
  func = FUNC5 (pc);

  if (!func)
    {
      struct minimal_symbol *msymbol = FUNC9 (pc);

      if (msymbol == NULL)
	FUNC4 ("Execution is not within a known function.");

      step_range_start = FUNC2 (msymbol);
      step_range_end = pc;
    }
  else
    {
      sal = FUNC6 (pc, 0);

      step_range_start = FUNC0 (FUNC1 (func));
      step_range_end = sal.end;
    }

  step_over_calls = STEP_OVER_ALL;
  step_frame_id = FUNC8 (frame);
  step_sp = FUNC12 ();

  step_multi = 0;		/* Only one call to proceed */

  FUNC10 ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 1);
}