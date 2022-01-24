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
struct affine_tree_combination {unsigned int n; void* rest; void** elts; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1 (struct affine_tree_combination *comb)
{
  unsigned i;

  for (i = 0; i < comb->n; i++)
    comb->elts[i] = FUNC0 (comb->elts[i]);
  if (comb->rest)
    comb->rest = FUNC0 (comb->rest);
}