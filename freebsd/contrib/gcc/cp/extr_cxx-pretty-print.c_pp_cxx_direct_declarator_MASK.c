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
#define  CONST_DECL 137 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  FIELD_DECL 136 
#define  FUNCTION_DECL 135 
#define  PARM_DECL 134 
#define  TEMPLATE_DECL 133 
#define  TEMPLATE_PARM_INDEX 132 
#define  TEMPLATE_TEMPLATE_PARM 131 
#define  TEMPLATE_TYPE_PARM 130 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  TYPENAME_TYPE 129 
#define  VAR_DECL 128 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pp_before ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC2 (t))
    {
    case VAR_DECL:
    case PARM_DECL:
    case CONST_DECL:
    case FIELD_DECL:
      if (FUNC0 (t))
	{
	  FUNC13 (pp, FUNC3 (t));
	  FUNC10 (pp, FUNC0 (t));
	}
      FUNC7 (pp, FUNC3 (t));
      break;

    case FUNCTION_DECL:
      FUNC13 (pp, FUNC3 (FUNC3 (t)));
      FUNC10 (pp, t);
      FUNC12 (pp, t);

      if (FUNC1 (t))
	{
	  FUNC4 (pp)->padding = pp_before;
	  FUNC8 (pp, FUNC11 (t));
	}

      FUNC9 (pp, FUNC3 (t));
      break;

    case TYPENAME_TYPE:
    case TEMPLATE_DECL:
    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_PARM_INDEX:
    case TEMPLATE_TEMPLATE_PARM:
      break;

    default:
      FUNC6 (FUNC5 (pp), t);
      break;
    }
}