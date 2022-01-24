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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 

const char *
FUNC3 (tree t)
{
  if (FUNC1 (t) == ENUMERAL_TYPE)
    return "enum";
  else if (FUNC1 (t) == UNION_TYPE)
    return "union";
  else if (FUNC2 (t) && FUNC0 (t))
    return "class";
  else
    return "struct";
}