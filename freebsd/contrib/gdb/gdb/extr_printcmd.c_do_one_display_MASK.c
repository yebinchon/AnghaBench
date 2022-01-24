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
struct value {int dummy; } ;
struct TYPE_2__ {int size; int count; char format; } ;
struct display {scalar_t__ enabled_p; int number; TYPE_1__ format; int /*<<< orphan*/  exp; scalar_t__ block; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int current_display_number ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct value*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct value*) ; 

__attribute__((used)) static void
FUNC18 (struct display *d)
{
  int within_current_scope;

  if (d->enabled_p == 0)
    return;

  if (d->block)
    within_current_scope = FUNC9 (FUNC13 (0), d->block);
  else
    within_current_scope = 1;
  if (!within_current_scope)
    return;

  current_display_number = d->number;

  FUNC2 ();
  FUNC16 ("%d", d->number);
  FUNC7 ();
  FUNC16 (": ");
  if (d->format.size)
    {
      CORE_ADDR addr;
      struct value *val;

      FUNC6 ();

      FUNC16 ("x/");
      if (d->format.count != 1)
	FUNC16 ("%d", d->format.count);
      FUNC16 ("%c", d->format.format);
      if (d->format.format != 'i' && d->format.format != 's')
	FUNC16 ("%c", d->format.size);
      FUNC16 (" ");

      FUNC4 ();

      FUNC14 (d->exp, gdb_stdout);
      FUNC5 ();

      if (d->format.count != 1)
	FUNC16 ("\n");
      else
	FUNC16 ("  ");

      val = FUNC11 (d->exp);
      addr = FUNC17 (val);
      if (d->format.format == 'i')
	addr = FUNC0 (addr);

      FUNC8 ();

      FUNC10 (d->format, addr, FUNC1 (val));
    }
  else
    {
      FUNC6 ();

      if (d->format.format)
	FUNC16 ("/%c ", d->format.format);

      FUNC4 ();

      FUNC14 (d->exp, gdb_stdout);
      FUNC5 ();

      FUNC16 (" = ");

      FUNC4 ();

      FUNC15 (FUNC11 (d->exp),
		       d->format.format, d->format.size, gdb_stdout);
      FUNC16 ("\n");
    }

  FUNC3 ();

  FUNC12 (gdb_stdout);
  current_display_number = -1;
}