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
typedef  int DECL_VIRTUAL_P ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC5 (tree type, tree fndecl)
{
  tree fn = FUNC4 (type, fndecl);
  if (fn)
    {
      if (FUNC0 (fndecl))
	{
	  /* A static member function cannot match an inherited
	     virtual member function.  */
	  FUNC2 ("%q+#D cannot be declared", fndecl);
	  FUNC2 ("  since %q+#D declared in base class", fn);
	}
      else
	{
	  /* It's definitely virtual, even if not explicitly set.  */
	  DECL_VIRTUAL_P (fndecl) = 1;
	  FUNC1 (fndecl, fn);
	}
      return 1;
    }

  /* We failed to find one declared in this class. Look in its bases.  */
  return FUNC3 (type, fndecl);
}