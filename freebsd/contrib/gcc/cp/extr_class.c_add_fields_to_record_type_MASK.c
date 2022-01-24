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
struct sorted_fields_type {scalar_t__* elts; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5 (tree fields, struct sorted_fields_type *field_vec, int idx)
{
  tree x;
  for (x = fields; x; x = FUNC1 (x))
    {
      if (FUNC2 (x) == FIELD_DECL && FUNC0 (FUNC3 (x)))
	idx = FUNC5 (FUNC4 (FUNC3 (x)), field_vec, idx);
      else
	field_vec->elts[idx++] = x;
    }
  return idx;
}