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
struct df_ur_bb_info {int /*<<< orphan*/  out; int /*<<< orphan*/  in; int /*<<< orphan*/  kill; int /*<<< orphan*/  gen; } ;
struct dataflow {unsigned int block_info_size; struct dataflow* block_info; int /*<<< orphan*/  block_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct df_ur_bb_info* FUNC1 (struct dataflow*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct dataflow*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct dataflow *dflow)
{
  if (dflow->block_info)
    {
      unsigned int i;
      
      for (i = 0; i < dflow->block_info_size; i++)
	{
	  struct df_ur_bb_info *bb_info = FUNC1 (dflow, i);
	  if (bb_info)
	    {
	      FUNC0 (bb_info->gen);
	      FUNC0 (bb_info->kill);
	      FUNC0 (bb_info->in);
	      FUNC0 (bb_info->out);
	    }
	}
      
      FUNC3 (dflow->block_pool);
      dflow->block_info_size = 0;
      FUNC2 (dflow->block_info);
    }
  FUNC2 (dflow);
}