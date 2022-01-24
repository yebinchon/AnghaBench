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
 scalar_t__ CONVERT_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ VIEW_CONVERT_EXPR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC3 (tree stmt)
{
  tree rhs_pointer;

  if (stmt == NULL_TREE)
    return false;

  rhs_pointer = FUNC2 (stmt);

  if ((FUNC0 (rhs_pointer) == NOP_EXPR
       || FUNC0 (rhs_pointer) == CONVERT_EXPR
       || FUNC0 (rhs_pointer) == VIEW_CONVERT_EXPR)
      && FUNC1 (rhs_pointer))
    return true;
  else
    return false;
}