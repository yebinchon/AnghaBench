#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC4 (tree var, edge e)
{
  basic_block dest = e->dest;
  tree phi;

  for (phi = FUNC3 (dest); phi; phi = FUNC1 (phi))
    if (FUNC0 (phi, e) == var)
      return FUNC2 (phi);

  return var;
}