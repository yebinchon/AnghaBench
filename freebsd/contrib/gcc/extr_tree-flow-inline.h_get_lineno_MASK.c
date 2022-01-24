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
 scalar_t__ COMPOUND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4 (tree expr)
{
  if (expr == NULL_TREE)
    return -1;

  if (FUNC2 (expr) == COMPOUND_EXPR)
    expr = FUNC3 (expr, 0);

  if (! FUNC0 (expr))
    return -1;

  return FUNC1 (expr);
}