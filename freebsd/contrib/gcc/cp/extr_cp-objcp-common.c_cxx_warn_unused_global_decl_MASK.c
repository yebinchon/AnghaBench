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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 

bool
FUNC4 (tree decl)
{
  if (FUNC2 (decl) == FUNCTION_DECL && FUNC0 (decl))
    return false;
  if (FUNC1 (decl))
    return false;

  /* Const variables take the place of #defines in C++.  */
  if (FUNC2 (decl) == VAR_DECL && FUNC3 (decl))
    return false;

  return true;
}