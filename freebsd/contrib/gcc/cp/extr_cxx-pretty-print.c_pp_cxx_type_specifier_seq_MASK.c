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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;

/* Variables and functions */
#define  BOUND_TEMPLATE_TEMPLATE_PARM 133 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNCTION_DECL ; 
#define  METHOD_TYPE 132 
#define  TEMPLATE_DECL 131 
#define  TEMPLATE_TEMPLATE_PARM 130 
#define  TEMPLATE_TYPE_PARM 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC1 (t))
    {
    case TEMPLATE_DECL:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case TYPE_DECL:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
      FUNC6 (pp, t);
      FUNC8 (pp, t);
      break;

    case METHOD_TYPE:
      FUNC10 (pp, FUNC2 (t));
      FUNC9 (pp, FUNC2 (t));
      FUNC7 (pp, FUNC3 (t));
      break;

    default:
      if (!(FUNC1 (t) == FUNCTION_DECL && FUNC0 (t)))
	FUNC5 (FUNC4 (pp), t);
    }
}