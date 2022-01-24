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
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (tree decl)
{
  if (FUNC1 (decl) != VAR_DECL
       && FUNC1 (decl) != FUNCTION_DECL)
    return false;

  if (FUNC5 ("dllexport", FUNC0 (decl)))
    return true;

  /* Also mark class members of exported classes with dllexport.  */
  if (FUNC3 (decl)
      && FUNC5 ("dllexport",
			    FUNC2 (FUNC3 (decl))))
    return FUNC4 (decl);

  return false;
}