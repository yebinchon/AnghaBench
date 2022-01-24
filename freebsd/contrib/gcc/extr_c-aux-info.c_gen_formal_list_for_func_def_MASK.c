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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  formals_style ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  ansi ; 
 char* FUNC3 (char const*,char const*,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  k_and_r_decls ; 
 int /*<<< orphan*/  k_and_r_names ; 

__attribute__((used)) static const char *
FUNC6 (tree fndecl, formals_style style)
{
  const char *formal_list = "";
  tree formal_decl;

  formal_decl = FUNC0 (fndecl);
  while (formal_decl)
    {
      const char *this_formal;

      if (*formal_list && ((style == ansi) || (style == k_and_r_names)))
	formal_list = FUNC3 (formal_list, ", ", NULL);
      this_formal = FUNC5 (formal_decl, 0, style);
      if (style == k_and_r_decls)
	formal_list = FUNC3 (formal_list, this_formal, "; ", NULL);
      else
	formal_list = FUNC3 (formal_list, this_formal, NULL);
      formal_decl = FUNC1 (formal_decl);
    }
  if (style == ansi)
    {
      if (!FUNC0 (fndecl))
	formal_list = FUNC3 (formal_list, "void", NULL);
      if (FUNC4 (FUNC2 (fndecl)))
	formal_list = FUNC3 (formal_list, ", ...", NULL);
    }
  if ((style == ansi) || (style == k_and_r_names))
    formal_list = FUNC3 (" (", formal_list, ")", NULL);
  return formal_list;
}