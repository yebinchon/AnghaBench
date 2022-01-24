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
typedef  int /*<<< orphan*/  cxx_pretty_printer ;
struct TYPE_2__ {int /*<<< orphan*/  padding; } ;

/* Variables and functions */
#define  BOUND_TEMPLATE_TEMPLATE_PARM 136 
#define  FUNCTION_TYPE 135 
#define  METHOD_TYPE 134 
#define  RECORD_TYPE 133 
#define  REFERENCE_TYPE 132 
#define  TEMPLATE_TEMPLATE_PARM 131 
#define  TEMPLATE_TYPE_PARM 130 
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  TYPENAME_TYPE 129 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  UNBOUND_CLASS_TEMPLATE 128 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pp_before ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case REFERENCE_TYPE:
      FUNC9 (pp, t);
      break;

    case RECORD_TYPE:
      if (FUNC5 (t))
	FUNC13 (pp, FUNC4 (t));
      break;

    case METHOD_TYPE:
    case FUNCTION_TYPE:
      FUNC12 (pp, t);
      FUNC13 (pp, FUNC1 (t));
      if (FUNC0 (t) == METHOD_TYPE)
	{
	  FUNC6 (pp)->padding = pp_before;
	  FUNC10
	    (pp, FUNC1 (FUNC2 (FUNC3 (t))));
	}
      FUNC11 (pp, t);
      break;

    case TYPENAME_TYPE:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
    case UNBOUND_CLASS_TEMPLATE:
      break;

    default:
      FUNC8 (FUNC7 (pp), t);
      break;
    }
}