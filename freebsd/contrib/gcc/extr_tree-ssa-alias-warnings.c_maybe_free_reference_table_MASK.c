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
struct TYPE_3__ {int /*<<< orphan*/  objs; int /*<<< orphan*/  ptrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* ref_table ; 
 int /*<<< orphan*/ * ref_table_alloc_pool ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (ref_table)
    {
      FUNC2 (ref_table->ptrs);
      FUNC2 (ref_table->objs);
      FUNC0 (ref_table);
      ref_table = NULL;
    }

  if (ref_table_alloc_pool)
    {
      FUNC1 (ref_table_alloc_pool);
      ref_table_alloc_pool = NULL;
    }
}