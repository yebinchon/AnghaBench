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
#define  ENUMERAL_TYPE 134 
#define  RECORD_TYPE 133 
#define  TEMPLATE_PARM_INDEX 132 
#define  TEMPLATE_TEMPLATE_PARM 131 
#define  TEMPLATE_TYPE_PARM 130 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  TYPENAME_TYPE 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
    case RECORD_TYPE:
    case UNION_TYPE:
    case ENUMERAL_TYPE:
      FUNC7 (pp, t);
      break;

    case TEMPLATE_TYPE_PARM:
    case TEMPLATE_TEMPLATE_PARM:
    case TEMPLATE_PARM_INDEX:
      FUNC8 (pp, t);
      break;

    case TYPENAME_TYPE:
      FUNC5 (pp, "typename");
      FUNC6 (pp, FUNC1 (t));
      FUNC8 (pp, FUNC2 (t));
      break;

    default:
      FUNC4 (FUNC3 (pp), t);
      break;
    }
}