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
typedef  int /*<<< orphan*/  asection ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  DISASSEM_WIN ; 
 scalar_t__ FUNCTION_START_OFFSET ; 
 int /*<<< orphan*/  deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char*,char) ; 
 scalar_t__ tui_active ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uiout ; 

__attribute__((used)) static void
FUNC12 (char *arg, int from_tty)
{
  CORE_ADDR low, high;
  char *name;
  CORE_ADDR pc, pc_masked;
  char *space_index;
#if 0
  asection *section;
#endif

  name = NULL;
  if (!arg)
    {
      if (!deprecated_selected_frame)
	FUNC0 ("No frame selected.\n");

      pc = FUNC4 (deprecated_selected_frame);
      if (FUNC1 (pc, &name, &low, &high) == 0)
	FUNC0 ("No function contains program counter for selected frame.\n");
#if defined(TUI)
      /* NOTE: cagney/2003-02-13 The `tui_active' was previously
	 `tui_version'.  */
      if (tui_active)
	/* FIXME: cagney/2004-02-07: This should be an observer.  */
	low = tui_get_low_disassembly_address (low, pc);
#endif
      low += FUNCTION_START_OFFSET;
    }
  else if (!(space_index = (char *) FUNC8 (arg, ' ')))
    {
      /* One argument.  */
      pc = FUNC5 (arg);
      if (FUNC1 (pc, &name, &low, &high) == 0)
	FUNC0 ("No function contains specified address.\n");
#if defined(TUI)
      /* NOTE: cagney/2003-02-13 The `tui_active' was previously
	 `tui_version'.  */
      if (tui_active)
	/* FIXME: cagney/2004-02-07: This should be an observer.  */
	low = tui_get_low_disassembly_address (low, pc);
#endif
      low += FUNCTION_START_OFFSET;
    }
  else
    {
      /* Two arguments.  */
      *space_index = '\0';
      low = FUNC5 (arg);
      high = FUNC5 (space_index + 1);
    }

#if defined(TUI)
  if (!tui_is_window_visible (DISASSEM_WIN))
#endif
    {
      FUNC7 ("Dump of assembler code ");
      if (name != NULL)
	{
	  FUNC7 ("for function %s:\n", name);
	}
      else
	{
	  FUNC7 ("from ");
	  FUNC6 (low, 1, gdb_stdout);
	  FUNC7 (" to ");
	  FUNC6 (high, 1, gdb_stdout);
	  FUNC7 (":\n");
	}

      /* Dump the specified range.  */
      FUNC2 (uiout, 0, 0, 0, -1, low, high);

      FUNC7 ("End of assembler dump.\n");
      FUNC3 (gdb_stdout);
    }
#if defined(TUI)
  else
    {
      tui_show_assembly (low);
    }
#endif
}