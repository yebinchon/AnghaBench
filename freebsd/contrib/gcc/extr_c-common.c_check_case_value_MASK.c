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
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC8 (tree value)
{
  if (value == NULL_TREE)
    return value;

  /* ??? Can we ever get nops here for a valid case value?  We
     shouldn't for C.  */
  FUNC0 (value);
  /* In C++, the following is allowed:

       const int i = 3;
       switch (...) { case i: ... }

     So, we try to reduce the VALUE to a constant that way.  */
  if (FUNC2 ())
    {
      value = FUNC4 (value);
      FUNC0 (value);
      value = FUNC6 (value);
    }

  if (FUNC1 (value) == INTEGER_CST)
    /* Promote char or short to int.  */
    value = FUNC7 (value);
  else if (value != error_mark_node)
    {
      FUNC5 ("case label does not reduce to an integer constant");
      value = error_mark_node;
    }

  FUNC3 (value);

  return value;
}