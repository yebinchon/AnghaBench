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
struct value {int dummy; } ;
struct format_data {char format; int /*<<< orphan*/  size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct value*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct format_data FUNC3 (char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cleanup*) ; 
 struct value* FUNC5 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct cleanup* FUNC7 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct value*,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct format_data,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void
FUNC12 (char *exp, int from_tty)
{
  struct expression *expr;
  struct cleanup *old_chain;
  char format = 0;
  struct value *val;
  struct format_data fmt;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = FUNC3 (&exp, 0, 0);
      FUNC10 (fmt, "output");
      format = fmt.format;
    }

  expr = FUNC8 (exp);
  old_chain = FUNC7 (free_current_contents, &expr);

  val = FUNC5 (expr);

  FUNC1 (FUNC0 (val));

  FUNC9 (val, format, fmt.size, gdb_stdout);

  FUNC2 ();

  FUNC11 ("");
  FUNC6 (gdb_stdout);

  FUNC4 (old_chain);
}