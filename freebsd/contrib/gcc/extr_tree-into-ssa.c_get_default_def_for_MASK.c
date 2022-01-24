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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline tree
FUNC4 (tree sym)
{
  tree ddef = FUNC1 (sym);

  if (ddef == NULL_TREE)
    {
      ddef = FUNC2 (sym, FUNC0 ());
      FUNC3 (sym, ddef);
    }

  return ddef;
}