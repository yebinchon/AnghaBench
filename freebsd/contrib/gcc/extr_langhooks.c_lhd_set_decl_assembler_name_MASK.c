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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

void
FUNC12 (tree decl)
{
  /* The language-independent code should never use the
     DECL_ASSEMBLER_NAME for lots of DECLs.  Only FUNCTION_DECLs and
     VAR_DECLs for variables with static storage duration need a real
     DECL_ASSEMBLER_NAME.  */
  FUNC10 (FUNC7 (decl) == FUNCTION_DECL
	      || (FUNC7 (decl) == VAR_DECL
		  && (FUNC9 (decl)
		      || FUNC2 (decl)
		      || FUNC8 (decl))));
  
  /* By default, assume the name to use in assembly code is the same
     as that used in the source language.  (That's correct for C, and
     GCC used to set DECL_ASSEMBLER_NAME to the same value as
     DECL_NAME in build_decl, so this choice provides backwards
     compatibility with existing front-ends.
      
     Can't use just the variable's own name for a variable whose scope
     is less than the whole compilation.  Concatenate a distinguishing
     number - we use the DECL_UID.  */
  if (FUNC8 (decl) || FUNC1 (decl) == NULL_TREE)
    FUNC6 (decl, FUNC3 (decl));
  else
    {
      const char *name = FUNC5 (FUNC3 (decl));
      char *label;
      
      FUNC0 (label, name, FUNC4 (decl));
      FUNC6 (decl, FUNC11 (label));
    }
}