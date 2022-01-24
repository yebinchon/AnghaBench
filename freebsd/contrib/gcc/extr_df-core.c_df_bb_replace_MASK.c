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
struct df {int num_problems_defined; struct dataflow** problems_in_order; } ;
struct dataflow {scalar_t__ block_info; } ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*) ; 
 void* FUNC1 (struct dataflow*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dataflow*) ; 
 int /*<<< orphan*/  FUNC3 (struct dataflow*,int,void*) ; 

void 
FUNC4 (struct df *df, int old_index, basic_block new_block)
{
  int p;

  for (p = 0; p < df->num_problems_defined; p++)
    {
      struct dataflow *dflow = df->problems_in_order[p];
      if (dflow->block_info)
	{
	  void *temp;

	  FUNC2 (dflow);

	  /* The old switcheroo.  */

	  temp = FUNC1 (dflow, old_index);
	  FUNC3 (dflow, old_index, 
			  FUNC1 (dflow, new_block->index));
	  FUNC3 (dflow, new_block->index, temp);
	}
    }

  FUNC0 (old_index, new_block);
  new_block->index = old_index;
}