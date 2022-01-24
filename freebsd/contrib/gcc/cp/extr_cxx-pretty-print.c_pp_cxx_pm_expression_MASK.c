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
#define  DOTSTAR_EXPR 130 
#define  MEMBER_REF 129 
#define  OFFSET_REF 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (cxx_pretty_printer *pp, tree t)
{
  switch (FUNC0 (t))
    {
      /* Handle unfortunate OFFESET_REF overloading here.  */
    case OFFSET_REF:
      if (FUNC2 (FUNC1 (t, 0)))
	{
	  FUNC5 (pp, t);
	  break;
	}
      /* Else fall through.  */
    case MEMBER_REF:
    case DOTSTAR_EXPR:
      FUNC7 (pp, FUNC1 (t, 0));
      FUNC4 (pp);
      FUNC6(pp);
      FUNC3 (pp, FUNC1 (t, 1));
      break;


    default:
      FUNC3 (pp, t);
      break;
    }
}