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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 size_t BUILT_IN_MEMCPY ; 
 size_t BUILT_IN_MEMSET ; 
 scalar_t__ BUILT_IN_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC7 (tree decl, const char *asmspec)
{
  tree builtin;
  FUNC3 (FUNC2 (decl) == FUNCTION_DECL
	      && FUNC0 (decl) == BUILT_IN_NORMAL
	      && asmspec != 0);

  builtin = built_in_decls [FUNC1 (decl)];
  FUNC6 (builtin, asmspec);
  if (FUNC1 (decl) == BUILT_IN_MEMCPY)
    FUNC5 (asmspec);
  else if (FUNC1 (decl) == BUILT_IN_MEMSET)
    FUNC4 (asmspec);
}