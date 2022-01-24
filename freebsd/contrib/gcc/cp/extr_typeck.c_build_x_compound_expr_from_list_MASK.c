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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

tree FUNC4 (tree list, const char *msg)
{
  tree expr = FUNC1 (list);

  if (FUNC0 (list))
    {
      if (msg)
	FUNC3 ("%s expression list treated as compound expression", msg);

      for (list = FUNC0 (list); list; list = FUNC0 (list))
	expr = FUNC2 (expr, FUNC1 (list));
    }

  return expr;
}