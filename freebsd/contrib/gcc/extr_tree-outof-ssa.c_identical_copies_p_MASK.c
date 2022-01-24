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
 int FUNC0 (scalar_t__) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline bool
FUNC4 (tree s1, tree s2)
{
#ifdef ENABLE_CHECKING
  gcc_assert (TREE_CODE (s1) == MODIFY_EXPR);
  gcc_assert (TREE_CODE (s2) == MODIFY_EXPR);
  gcc_assert (DECL_P (TREE_OPERAND (s1, 0)));
  gcc_assert (DECL_P (TREE_OPERAND (s2, 0)));
#endif

  if (FUNC2 (s1, 0) != FUNC2 (s2, 0))
    return false;

  s1 = FUNC2 (s1, 1);
  s2 = FUNC2 (s2, 1);

  if (s1 != s2)
    return false;

  return true;
}