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
struct data_reference {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,struct data_reference*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct data_reference*,struct data_reference*,int*) ; 

__attribute__((used)) static bool
FUNC4 (tree base_a, tree base_b,
	     struct data_reference *dra,
	     struct data_reference *drb,
	     bool *aliased)
{
  if (FUNC0 (base_a) == ADDR_EXPR || FUNC0 (base_b) == ADDR_EXPR)
    {
      if (FUNC0 (base_a) == ADDR_EXPR && FUNC0 (base_b) == ADDR_EXPR)
	{
	 *aliased = (FUNC1 (base_a, 0) == FUNC1 (base_b, 0));
	 return true;
	}
      if (FUNC0 (base_a) == ADDR_EXPR)
	return FUNC2 (base_b, FUNC1 (base_a, 0), drb, 
				     aliased);
      else
	return FUNC2 (base_a, FUNC1 (base_b, 0), dra, 
				     aliased);
    }

  return FUNC3 (base_a, base_b, dra, drb, aliased);
}