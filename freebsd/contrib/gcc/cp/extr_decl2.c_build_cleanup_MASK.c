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
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ ARRAY_TYPE ; 
 int LOOKUP_DESTRUCTOR ; 
 int LOOKUP_NONVIRTUAL ; 
 int LOOKUP_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sfk_complete_destructor ; 

tree
FUNC9 (tree decl)
{
  tree temp;
  tree type = FUNC1 (decl);

  /* This function should only be called for declarations that really
     require cleanups.  */
  FUNC7 (!FUNC2 (type));

  /* Treat all objects with destructors as used; the destructor may do
     something substantive.  */
  FUNC8 (decl);

  if (FUNC0 (type) == ARRAY_TYPE)
    temp = decl;
  else
    {
      FUNC6 (decl);
      temp = FUNC3 (ADDR_EXPR, FUNC5 (type), decl);
    }
  temp = FUNC4 (FUNC1 (temp), temp,
		       sfk_complete_destructor,
		       LOOKUP_NORMAL|LOOKUP_NONVIRTUAL|LOOKUP_DESTRUCTOR, 0);
  return temp;
}