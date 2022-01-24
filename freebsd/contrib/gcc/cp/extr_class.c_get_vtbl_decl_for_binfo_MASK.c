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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

tree
FUNC4 (tree binfo)
{
  tree decl;

  decl = FUNC0 (binfo);
  if (decl && FUNC1 (decl) == PLUS_EXPR)
    {
      FUNC3 (FUNC1 (FUNC2 (decl, 0)) == ADDR_EXPR);
      decl = FUNC2 (FUNC2 (decl, 0), 0);
    }
  if (decl)
    FUNC3 (FUNC1 (decl) == VAR_DECL);
  return decl;
}