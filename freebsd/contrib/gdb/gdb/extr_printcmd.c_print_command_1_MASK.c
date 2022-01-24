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
struct type {int dummy; } ;
struct format_data {char format; int count; scalar_t__ size; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ TYPE_CODE_VOID ; 
 scalar_t__ FUNC1 (struct value*) ; 
 struct value* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct format_data FUNC8 (char**,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cleanup*) ; 
 struct value* FUNC10 (struct expression*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int inspect_it ; 
 char last_format ; 
 struct cleanup* FUNC11 (int /*<<< orphan*/ ,struct expression**) ; 
 struct expression* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct value*,char,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (struct value*) ; 
 int /*<<< orphan*/  FUNC17 (struct format_data,char*) ; 

__attribute__((used)) static void
FUNC18 (char *exp, int inspect, int voidprint)
{
  struct expression *expr;
  struct cleanup *old_chain = 0;
  char format = 0;
  struct value *val;
  struct format_data fmt;
  int cleanup = 0;

  /* Pass inspect flag to the rest of the print routines in a global (sigh). */
  inspect_it = inspect;

  if (exp && *exp == '/')
    {
      exp++;
      fmt = FUNC8 (&exp, last_format, 0);
      FUNC17 (fmt, "print");
      last_format = format = fmt.format;
    }
  else
    {
      fmt.count = 1;
      fmt.format = 0;
      fmt.size = 0;
    }

  if (exp && *exp)
    {
      struct type *type;
      expr = FUNC12 (exp);
      old_chain = FUNC11 (free_current_contents, &expr);
      cleanup = 1;
      val = FUNC10 (expr);
    }
  else
    val = FUNC2 (0);

  if (voidprint || (val && FUNC1 (val) &&
		    FUNC0 (FUNC1 (val)) != TYPE_CODE_VOID))
    {
      int histindex = FUNC16 (val);

      if (histindex >= 0)
	FUNC5 (histindex, FUNC1 (val));
      else
	FUNC3 (FUNC1 (val));

      if (inspect)
	FUNC15 ("\031(gdb-makebuffer \"%s\"  %d '(\"", exp, histindex);
      else if (histindex >= 0)
	FUNC14 ("$%d = ", histindex);

      if (histindex >= 0)
	FUNC7 ();

      FUNC13 (val, format, fmt.size, gdb_stdout);
      FUNC14 ("\n");

      if (histindex >= 0)
	FUNC6 ();
      else
	FUNC4 ();

      if (inspect)
	FUNC15 ("\") )\030");
    }

  if (cleanup)
    FUNC9 (old_chain);
  inspect_it = 0;		/* Reset print routines to normal */
}