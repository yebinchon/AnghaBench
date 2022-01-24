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
typedef  int /*<<< orphan*/ * lambda_linear_expression ;

/* Variables and functions */
 scalar_t__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4 (lambda_linear_expression lle1, lambda_linear_expression lle2,
	   int depth, int invariants)
{
  int i;

  if (lle1 == NULL || lle2 == NULL)
    return false;
  if (FUNC1 (lle1) != FUNC1 (lle2))
    return false;
  if (FUNC2 (lle1) != FUNC2 (lle2))
    return false;
  for (i = 0; i < depth; i++)
    if (FUNC0 (lle1)[i] != FUNC0 (lle2)[i])
      return false;
  for (i = 0; i < invariants; i++)
    if (FUNC3 (lle1)[i] !=
	FUNC3 (lle2)[i])
      return false;
  return true;
}