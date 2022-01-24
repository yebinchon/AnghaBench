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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC6 (tree decl, tree type)
{
  /* Motion 10 at San Diego: If a static const integral data member is
     initialized with an integral constant expression, the initializer
     may appear either in the declaration (within the class), or in
     the definition, but not both.  If it appears in the class, the
     member is a member constant.  The file-scope definition is always
     required.  */
  if (!FUNC0 (type) && FUNC3 (type) != ENUMERAL_TYPE)
    {
      FUNC4 ("invalid in-class initialization of static data member "
	     "of non-integral type %qT",
	     type);
      /* If we just return the declaration, crashes will sometimes
	 occur.  We therefore return void_type_node, as if this were a
	 friend declaration, to cause callers to completely ignore
	 this declaration.  */
      return 1;
    }
  else if (!FUNC1 (type))
    FUNC4 ("ISO C++ forbids in-class initialization of non-const "
	   "static member %qD",
	   decl);
  else if (pedantic && !FUNC2 (type))
    FUNC5 ("ISO C++ forbids initialization of member constant "
	     "%qD of non-integral type %qT", decl, type);

  return 0;
}