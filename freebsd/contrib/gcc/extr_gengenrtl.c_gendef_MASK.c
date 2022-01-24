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

/* Variables and functions */
 char* FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const) ; 

__attribute__((used)) static void
FUNC4 (const char *format)
{
  const char *p;
  int i, j;

  /* Start by writing the definition of the function name and the types
     of the arguments.  */

  FUNC1 ("rtx\ngen_rtx_fmt_%s (RTX_CODE code, enum machine_mode mode", format);
  for (p = format, i = 0; *p != 0; p++)
    if (*p != '0')
      FUNC1 (",\n\t%sarg%d", FUNC3 (*p), i++);

  FUNC2 (")");

  /* Now write out the body of the function itself, which allocates
     the memory and initializes it.  */
  FUNC2 ("{");
  FUNC2 ("  rtx rt;");
  FUNC2 ("  rt = rtx_alloc (code);\n");

  FUNC2 ("  PUT_MODE (rt, mode);");

  for (p = format, i = j = 0; *p ; ++p, ++i)
    if (*p != '0')
      FUNC1 ("  %s (rt, %d) = arg%d;\n", FUNC0 (*p), i, j++);
    else
      FUNC1 ("  X0EXP (rt, %d) = NULL_RTX;\n", i);

  FUNC2 ("\n  return rt;\n}\n");
}