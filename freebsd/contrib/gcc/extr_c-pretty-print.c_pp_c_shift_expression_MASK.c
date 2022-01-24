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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  LSHIFT_EXPR 129 
#define  RSHIFT_EXPR 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5 (c_pretty_printer *pp, tree e)
{
  enum tree_code code = FUNC0 (e);
  switch (code)
    {
    case LSHIFT_EXPR:
    case RSHIFT_EXPR:
      FUNC5 (pp, FUNC1 (e, 0));
      FUNC3 (pp);
      FUNC4 (pp, code == LSHIFT_EXPR ? "<<" : ">>");
      FUNC3 (pp);
      FUNC2 (pp, FUNC1 (e, 1));
      break;

    default:
      FUNC2 (pp, e);
    }
}