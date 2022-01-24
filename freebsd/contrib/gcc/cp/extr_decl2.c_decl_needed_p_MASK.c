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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int at_eof ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

bool
FUNC8 (tree decl)
{
  FUNC7 (FUNC3 (decl) == VAR_DECL
	      || FUNC3 (decl) == FUNCTION_DECL);
  /* This function should only be called at the end of the translation
     unit.  We cannot be sure of whether or not something will be
     COMDAT until that point.  */
  FUNC7 (at_eof);

  /* All entities with external linkage that are not COMDAT should be
     emitted; they may be referred to from other object files.  */
  if (FUNC4 (decl) && !FUNC2 (decl))
    return true;
  /* If this entity was used, let the back-end see it; it will decide
     whether or not to emit it into the object file.  */
  if (FUNC6 (decl)
      || (FUNC1 (decl)
	  && FUNC5 (FUNC0 (decl))))
      return true;
  /* Otherwise, DECL does not need to be emitted -- yet.  A subsequent
     reference to DECL might cause it to be emitted later.  */
  return false;
}