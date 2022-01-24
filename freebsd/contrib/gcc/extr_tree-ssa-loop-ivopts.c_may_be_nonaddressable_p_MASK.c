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
#define  ARRAY_RANGE_REF 131 
#define  ARRAY_REF 130 
#define  COMPONENT_REF 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  VIEW_CONVERT_EXPR 128 

__attribute__((used)) static bool
FUNC5 (tree expr)
{
  switch (FUNC2 (expr))
    {
    case COMPONENT_REF:
      return FUNC1 (FUNC3 (expr, 1))
	     || FUNC5 (FUNC3 (expr, 0));

    case ARRAY_REF:
    case ARRAY_RANGE_REF:
      return FUNC5 (FUNC3 (expr, 0));

    case VIEW_CONVERT_EXPR:
      /* This kind of view-conversions may wrap non-addressable objects
	 and make them look addressable.  After some processing the
	 non-addressability may be uncovered again, causing ADDR_EXPRs
	 of inappropriate objects to be built.  */
      return FUNC0 (FUNC4 (expr))
	     && !FUNC0 (FUNC4 (FUNC3 (expr, 0)));

    default:
      break;
    }

  return false;
}