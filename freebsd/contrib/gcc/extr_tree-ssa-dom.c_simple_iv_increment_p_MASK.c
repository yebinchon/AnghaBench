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
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned int) ; 
 scalar_t__ PHI_NODE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static bool
FUNC5 (tree stmt)
{
  tree lhs, rhs, preinc, phi;
  unsigned i;

  if (FUNC3 (stmt) != MODIFY_EXPR)
    return false;

  lhs = FUNC4 (stmt, 0);
  if (FUNC3 (lhs) != SSA_NAME)
    return false;

  rhs = FUNC4 (stmt, 1);

  if (FUNC3 (rhs) != PLUS_EXPR
      && FUNC3 (rhs) != MINUS_EXPR)
    return false;

  preinc = FUNC4 (rhs, 0);
  if (FUNC3 (preinc) != SSA_NAME)
    return false;

  phi = FUNC2 (preinc);
  if (FUNC3 (phi) != PHI_NODE)
    return false;

  for (i = 0; i < (unsigned) FUNC1 (phi); i++)
    if (FUNC0 (phi, i) == lhs)
      return true;

  return false;
}