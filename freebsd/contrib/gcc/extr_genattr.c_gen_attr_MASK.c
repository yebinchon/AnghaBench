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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char const**) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (rtx attr)
{
  const char *p, *tag;
  int is_const = FUNC0 (FUNC2 (attr, 2)) == CONST;

  FUNC5 ("#define HAVE_ATTR_%s\n", FUNC3 (attr, 0));

  /* If numeric attribute, don't need to write an enum.  */
  p = FUNC3 (attr, 1);
  if (*p == '\0')
    FUNC5 ("extern int get_attr_%s (%s);\n", FUNC3 (attr, 0),
	    (is_const ? "void" : "rtx"));
  else
    {
      FUNC5 ("enum attr_%s {", FUNC3 (attr, 0));

      while ((tag = FUNC8 (&p)) != 0)
	{
	  FUNC10 (FUNC3 (attr, 0));
	  FUNC6 ('_');
	  while (tag != p)
	    FUNC6 (FUNC1 (*tag++));
	  if (*p == ',')
	    FUNC4 (", ", stdout);
	}

      FUNC4 ("};\n", stdout);
      FUNC5 ("extern enum attr_%s get_attr_%s (%s);\n\n",
	      FUNC3 (attr, 0), FUNC3 (attr, 0), (is_const ? "void" : "rtx"));
    }

  /* If `length' attribute, write additional function definitions and define
     variables used by `insn_current_length'.  */
  if (! FUNC9 (FUNC3 (attr, 0), "length"))
    {
      FUNC7 ("\
extern void shorten_branches (rtx);\n\
extern int insn_default_length (rtx);\n\
extern int insn_min_length (rtx);\n\
extern int insn_variable_length_p (rtx);\n\
extern int insn_current_length (rtx);\n\n\
#include \"insn-addr.h\"\n");
    }
}