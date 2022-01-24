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
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  ARRAY_TYPE 139 
#define  ENUMERAL_TYPE 138 
#define  FIELD_DECL 137 
#define  FUNCTION_DECL 136 
#define  FUNCTION_TYPE 135 
#define  INTEGER_TYPE 134 
#define  PARM_DECL 133 
#define  REAL_TYPE 132 
#define  RECORD_TYPE 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 130 
#define  UNION_TYPE 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3 (c_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case INTEGER_TYPE:
    case REAL_TYPE:
    case ENUMERAL_TYPE:
    case UNION_TYPE:
    case RECORD_TYPE:
      break;

    case VAR_DECL:
    case PARM_DECL:
    case FIELD_DECL:
    case ARRAY_TYPE:
    case FUNCTION_TYPE:
    case FUNCTION_DECL:
    case TYPE_DECL:
      FUNC1 (pp, t);
    break;


    default:
      FUNC2 (pp, t);
      break;
    }
}