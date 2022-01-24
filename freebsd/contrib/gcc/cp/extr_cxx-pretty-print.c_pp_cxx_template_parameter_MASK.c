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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PARM_DECL 130 
#define  TEMPLATE_DECL 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  TYPE_DECL 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (cxx_pretty_printer *pp, tree t)
{
  tree parameter =  FUNC2 (t);
  switch (FUNC1 (parameter))
    {
    case TYPE_DECL:
      FUNC3 (pp, "class");
      if (FUNC0 (parameter))
	FUNC5 (pp, FUNC0 (parameter));
      /* FIXME: Chech if we should print also default argument.  */
      break;

    case PARM_DECL:
      FUNC4 (pp, parameter);
      break;

    case TEMPLATE_DECL:
      break;

    default:
      FUNC6 (pp, t);
      break;
    }
}