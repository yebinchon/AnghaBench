#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ CONSTRUCTOR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TREE_LIST ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  constructor_elt ; 
 int elts ; 
 int /*<<< orphan*/  gc ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree init)
{
  if (FUNC1 (init) == TREE_LIST)
    /* A parenthesized initializer, e.g.: int i (3, 2); ? */
    return FUNC5 (init);
  else if (FUNC1 (init) == CONSTRUCTOR)
  /* A brace-enclosed initializer, e.g.: int i = { 3 }; ? */
    {
      FUNC2(constructor_elt, gc) *elts;
      size_t nelts;
      size_t i;

      elts = FUNC0 (init);
      nelts = FUNC4 (constructor_elt, elts);
      for (i = 0; i < nelts; ++i)
	if (FUNC7 (FUNC3 (constructor_elt,
					       elts, i)->value))
	  return true;
    }
  else
    /* It must be a simple expression, e.g., int i = 3;  */
    return FUNC6 (init);
  
  return false;
}