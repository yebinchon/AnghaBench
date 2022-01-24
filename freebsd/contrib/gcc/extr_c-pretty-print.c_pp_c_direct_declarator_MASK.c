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
typedef  int /*<<< orphan*/  c_pretty_printer ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
#define  ARRAY_TYPE 142 
#define  BLOCK_POINTER_TYPE 141 
#define  ENUMERAL_TYPE 140 
#define  FIELD_DECL 139 
#define  FUNCTION_DECL 138 
#define  FUNCTION_TYPE 137 
#define  INTEGER_TYPE 136 
#define  LABEL_DECL 135 
#define  PARM_DECL 134 
#define  POINTER_TYPE 133 
#define  REAL_TYPE 132 
#define  RECORD_TYPE 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 130 
#define  UNION_TYPE 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int pp_c_flag_abstract ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC8 (c_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case VAR_DECL:
    case PARM_DECL:
    case TYPE_DECL:
    case FIELD_DECL:
    case LABEL_DECL:
      FUNC4 (pp, FUNC1 (t));
      FUNC5 (pp, t);
      break;

    case ARRAY_TYPE:
    case POINTER_TYPE:
    /* APPLE LOCAL blocks */
    case BLOCK_POINTER_TYPE:
      FUNC2 (pp, FUNC1 (t));
      break;

    case FUNCTION_TYPE:
      FUNC6 (pp, t);
      FUNC2 (pp, FUNC1 (t));
      break;

    case FUNCTION_DECL:
      FUNC4 (pp, FUNC1 (FUNC1 (t)));
      FUNC5 (pp, t);
      if (FUNC3 (pp)->flags & pp_c_flag_abstract)
	FUNC2 (pp, FUNC1 (t));
      else
	{
	  FUNC6 (pp, t);
	  FUNC2 (pp, FUNC1 (FUNC1 (t)));
	}
      break;

    case INTEGER_TYPE:
    case REAL_TYPE:
    case ENUMERAL_TYPE:
    case UNION_TYPE:
    case RECORD_TYPE:
      break;

    default:
      FUNC7 (pp, t);
      break;
    }
}