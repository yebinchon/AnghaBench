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
struct TYPE_2__ {char size; scalar_t__ format; int /*<<< orphan*/  count; } ;
struct display {scalar_t__ block; int /*<<< orphan*/  exp; TYPE_1__ format; scalar_t__ enabled_p; int /*<<< orphan*/  number; struct display* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct display* display_chain ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *ignore, int from_tty)
{
  struct display *d;

  if (!display_chain)
    FUNC5 ("There are no auto-display expressions now.\n");
  else
    FUNC4 ("Auto-display expressions now in effect:\n\
Num Enb Expression\n");

  for (d = display_chain; d; d = d->next)
    {
      FUNC4 ("%d:   %c  ", d->number, "ny"[(int) d->enabled_p]);
      if (d->format.size)
	FUNC4 ("/%d%c%c ", d->format.count, d->format.size,
			 d->format.format);
      else if (d->format.format)
	FUNC4 ("/%c ", d->format.format);
      FUNC3 (d->exp, gdb_stdout);
      if (d->block && !FUNC0 (FUNC2 (0), d->block))
	FUNC4 (" (cannot be evaluated in the current context)");
      FUNC4 ("\n");
      FUNC1 (gdb_stdout);
    }
}