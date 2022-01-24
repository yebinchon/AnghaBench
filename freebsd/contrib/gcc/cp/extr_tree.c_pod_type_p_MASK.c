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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

int
FUNC8 (tree t)
{
  t = FUNC7 (t);

  if (t == error_mark_node)
    return 1;
  if (FUNC3 (t))
    return 1;  /* integral, character or enumeral type */
  if (FUNC2 (t))
    return 1;
  if (FUNC5 (t))
    return 1; /* pointer to non-member */
  if (FUNC6 (t))
    return 1; /* pointer to member */

  if (FUNC4 (t) == VECTOR_TYPE)
    return 1; /* vectors are (small) arrays of scalars */

  if (! FUNC1 (t))
    return 0; /* other non-class type (reference or function) */
  if (FUNC0 (t))
    return 0;
  return 1;
}