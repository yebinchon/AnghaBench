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
typedef  char* tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 

__attribute__((used)) static bool
FUNC5 (tree expr)
{
  tree type = FUNC2 (expr);

  /* 15.1/4 [...] The type of the throw-expression shall not be an
	    incomplete type, or a pointer or a reference to an incomplete
	    type, other than void*, const void*, volatile void*, or
	    const volatile void*.  Except for these restriction and the
	    restrictions on type matching mentioned in 15.3, the operand
	    of throw is treated exactly as a function argument in a call
	    (5.2.2) or the operand of a return statement.  */
  if (!FUNC3 (type, expr))
    return false;

  /* 10.4/3 An abstract class shall not be used as a parameter type,
	    as a function return type or as type of an explicit
	    conversion.  */
  else if (FUNC1 (type) && FUNC0 (type))
    {
      FUNC4 ("expression %qE of abstract class type %qT cannot "
	     "be used in throw-expression", expr, type);
      return false;
    }

  return true;
}