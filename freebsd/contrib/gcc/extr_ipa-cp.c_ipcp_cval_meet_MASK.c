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
struct ipcp_formal {int dummy; } ;

/* Variables and functions */
 scalar_t__ BOTTOM ; 
 scalar_t__ TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ipcp_formal*) ; 
 scalar_t__ FUNC2 (struct ipcp_formal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipcp_formal*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ipcp_formal*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5 (struct ipcp_formal *cval, struct ipcp_formal *cval1,
		struct ipcp_formal *cval2)
{
  if (FUNC2 (cval1) == BOTTOM
      || FUNC2 (cval2) == BOTTOM)
    {
      FUNC4 (cval, BOTTOM);
      return;
    }
  if (FUNC2 (cval1) == TOP)
    {
      FUNC4 (cval, FUNC2 (cval2));
      FUNC3 (cval, FUNC1 (cval2),
			    FUNC2 (cval2));
      return;
    }
  if (FUNC2 (cval2) == TOP)
    {
      FUNC4 (cval, FUNC2 (cval1));
      FUNC3 (cval, FUNC1 (cval1),
			    FUNC2 (cval1));
      return;
    }
  if (!FUNC0 (FUNC1 (cval1),
				FUNC1 (cval2),
				FUNC2 (cval1),
				FUNC2 (cval2)))
    {
      FUNC4 (cval, BOTTOM);
      return;
    }
  FUNC4 (cval, FUNC2 (cval1));
  FUNC3 (cval, FUNC1 (cval1),
			FUNC2 (cval1));
}