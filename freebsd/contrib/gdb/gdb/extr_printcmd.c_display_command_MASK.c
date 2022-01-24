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
struct format_data {char size; char format; scalar_t__ count; } ;
struct expression {int dummy; } ;
struct display {int enabled_p; struct format_data format; scalar_t__ number; struct display* next; scalar_t__ block; struct expression* exp; } ;

/* Variables and functions */
 scalar_t__ TUI_FAILURE ; 
 struct format_data FUNC0 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct display* display_chain ; 
 scalar_t__ display_number ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct display*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ innermost_block ; 
 struct expression* FUNC4 (char*) ; 
 scalar_t__ target_has_execution ; 
 scalar_t__ tui_active ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7 (char *exp, int from_tty)
{
  struct format_data fmt;
  struct expression *expr;
  struct display *new;
  int display_it = 1;

#if defined(TUI)
  /* NOTE: cagney/2003-02-13 The `tui_active' was previously
     `tui_version'.  */
  if (tui_active && exp != NULL && *exp == '$')
    display_it = (tui_set_layout_for_display_command (exp) == TUI_FAILURE);
#endif

  if (display_it)
    {
      if (exp == 0)
	{
	  FUNC1 ();
	  return;
	}

      if (*exp == '/')
	{
	  exp++;
	  fmt = FUNC0 (&exp, 0, 0);
	  if (fmt.size && fmt.format == 0)
	    fmt.format = 'x';
	  if (fmt.format == 'i' || fmt.format == 's')
	    fmt.size = 'b';
	}
      else
	{
	  fmt.format = 0;
	  fmt.size = 0;
	  fmt.count = 0;
	}

      innermost_block = 0;
      expr = FUNC4 (exp);

      new = (struct display *) FUNC6 (sizeof (struct display));

      new->exp = expr;
      new->block = innermost_block;
      new->next = display_chain;
      new->number = ++display_number;
      new->format = fmt;
      new->enabled_p = 1;
      display_chain = new;

      if (from_tty && target_has_execution)
	FUNC2 (new);

      FUNC3 ();
    }
}