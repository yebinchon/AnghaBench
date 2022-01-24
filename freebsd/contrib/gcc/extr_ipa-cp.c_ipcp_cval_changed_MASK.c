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
 scalar_t__ CONST_VALUE ; 
 scalar_t__ CONST_VALUE_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ipcp_formal*) ; 
 scalar_t__ FUNC2 (struct ipcp_formal*) ; 

__attribute__((used)) static bool
FUNC3 (struct ipcp_formal *cval1, struct ipcp_formal *cval2)
{
  if (FUNC2 (cval1) == FUNC2 (cval2))
    {
      if (FUNC2 (cval1) != CONST_VALUE &&
	  FUNC2 (cval1) != CONST_VALUE_REF)	 
	return false;
      if (FUNC0 (FUNC1 (cval1),
				   FUNC1 (cval2),
				   FUNC2 (cval1),
				   FUNC2 (cval2)))
	return false;
    }
  return true;
}