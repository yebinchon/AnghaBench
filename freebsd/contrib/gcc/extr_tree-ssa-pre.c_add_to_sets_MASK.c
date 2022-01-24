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
typedef  scalar_t__ bitmap_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC4 (tree var, tree expr, tree stmt, bitmap_set_t s1,
	     bitmap_set_t s2)
{
  tree val = FUNC3 (expr, stmt);

  /* VAR and EXPR may be the same when processing statements for which
     we are not computing value numbers (e.g., non-assignments, or
     statements that make aliased stores).  In those cases, we are
     only interested in making VAR available as its own value.  */
  if (var != expr)
    FUNC2 (var, val);

  if (s1)
    FUNC0 (s1, var);
  FUNC1 (s2, var);
}