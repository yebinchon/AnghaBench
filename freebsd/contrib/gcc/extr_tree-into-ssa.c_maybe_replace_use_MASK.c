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
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static inline void
FUNC7 (use_operand_p use_p)
{
  tree rdef = NULL_TREE;
  tree use = FUNC3 (use_p);
  tree sym = FUNC0 (use) ? use : FUNC2 (use);

  if (FUNC6 (sym))
    rdef = FUNC4 (sym);
  else if (FUNC5 (use))
    rdef = FUNC4 (use);

  if (rdef && rdef != use)
    FUNC1 (use_p, rdef);
}