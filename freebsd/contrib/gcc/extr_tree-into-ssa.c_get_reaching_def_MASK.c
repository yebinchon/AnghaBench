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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC5 (tree var)
{
  tree currdef_var, avar;
  
  /* Lookup the current reaching definition for VAR.  */
  currdef_var = FUNC2 (var);

  /* If there is no reaching definition for VAR, create and register a
     default definition for it (if needed).  */
  if (currdef_var == NULL_TREE)
    {
      avar = FUNC0 (var) ? var : FUNC1 (var);
      currdef_var = FUNC3 (avar);
      FUNC4 (var, currdef_var);
    }

  /* Return the current reaching definition for VAR, or the default
     definition, if we had to create one.  */
  return currdef_var;
}