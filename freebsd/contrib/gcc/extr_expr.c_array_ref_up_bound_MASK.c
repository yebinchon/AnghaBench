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
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

tree
FUNC5 (tree exp)
{
  tree domain_type = FUNC3 (FUNC2 (FUNC1 (exp, 0)));

  /* If there is a domain type and it has an upper bound, use it, substituting
     for a PLACEHOLDER_EXPR as needed.  */
  if (domain_type && FUNC4 (domain_type))
    return FUNC0 (FUNC4 (domain_type), exp);

  /* Otherwise fail.  */
  return NULL_TREE;
}