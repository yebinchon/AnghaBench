#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sub_section; int /*<<< orphan*/  section; struct TYPE_3__* next; } ;
typedef  TYPE_1__ literal_pool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* list_of_pools ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  literal_pool * pool;

  for (pool = list_of_pools; pool; pool = pool->next)
    {
      /* Put it at the end of the relevent section.  */
      FUNC2 (pool->section, pool->sub_section);
#ifdef OBJ_ELF
      arm_elf_change_section ();
#endif
      FUNC1 (0);
    }
}