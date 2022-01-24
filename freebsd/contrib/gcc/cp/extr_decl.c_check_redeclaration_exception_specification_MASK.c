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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_exceptions ; 
 scalar_t__ pedantic ; 

__attribute__((used)) static void
FUNC6 (tree new_decl,
					     tree old_decl)
{
  tree new_type;
  tree old_type;
  tree new_exceptions;
  tree old_exceptions;

  new_type = FUNC2 (new_decl);
  new_exceptions = FUNC3 (new_type);
  old_type = FUNC2 (old_decl);
  old_exceptions = FUNC3 (old_type);

  /* [except.spec]

     If any declaration of a function has an exception-specification,
     all declarations, including the definition and an explicit
     specialization, of that function shall have an
     exception-specification with the same set of type-ids.  */
  if ((pedantic || ! FUNC0 (old_decl))
      && ! FUNC1 (old_decl)
      && flag_exceptions
      && !FUNC4 (new_exceptions, old_exceptions,
			     /*exact=*/true))
    {
      FUNC5 ("declaration of %qF throws different exceptions", new_decl);
      FUNC5 ("from previous declaration %q+F", old_decl);
    }
}