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
struct ptr_info_def {scalar_t__ name_mem_tag; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct ptr_info_def* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int num_ssa_names ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  unsigned int i;

  for (i = 1; i < num_ssa_names; i++)
    {
      tree ptr = FUNC3 (i);
      struct ptr_info_def *pi;

      if (ptr == NULL_TREE)
	continue;

      pi = FUNC1 (ptr);

      if (!FUNC0 (ptr) && pi && pi->name_mem_tag)
	FUNC2 (ptr);
    }
}