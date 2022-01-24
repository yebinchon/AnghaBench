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
#define  CONST_DECL 135 
#define  FIELD_DECL 134 
#define  FUNCTION_DECL 133 
#define  IDENTIFIER_NODE 132 
#define  LABEL_DECL 131 
#define  PARM_DECL 130 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 129 
#define  VAR_DECL 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4 (c_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case VAR_DECL:
    case PARM_DECL:
    case CONST_DECL:
    case TYPE_DECL:
    case FUNCTION_DECL:
    case FIELD_DECL:
    case LABEL_DECL:
      FUNC1 (pp, t);
      break;

    case IDENTIFIER_NODE:
      FUNC2 (pp, t);
      break;

    default:
      FUNC3 (pp, t);
      break;
    }
}