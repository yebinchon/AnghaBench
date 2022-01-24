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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MACHO_SYMBOL_FLAG_DEFINED ; 
 int MACHO_SYMBOL_FLAG_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (rtx sym_ref)
{
  if (FUNC3 (sym_ref) & MACHO_SYMBOL_FLAG_DEFINED)
    return true;

  /* If a symbol references local and is not an extern to this
     file, then the symbol might be able to declared as defined.  */
  if (FUNC4 (sym_ref) && ! FUNC2 (sym_ref))
    {
      /* If the symbol references a variable and the variable is a
	 common symbol, then this symbol is not defined.  */
      if (FUNC3 (sym_ref) & MACHO_SYMBOL_FLAG_VARIABLE)
	{
	  tree decl = FUNC1 (sym_ref);
	  if (!decl)
	    return true;
	  if (FUNC0 (decl))
	    return false;
	}
      return true;
    }
  return false;
}