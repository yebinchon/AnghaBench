#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_5__ {scalar_t__ index; struct TYPE_5__* aux; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PFREE_CANDIDATE ; 
 scalar_t__ VOIDmode ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static basic_block
FUNC6 (basic_block last_block, rtx load_insn)
{
  rtx back_link;
  basic_block bb, earliest_block = NULL;

  for (back_link = FUNC3 (load_insn);
       back_link;
       back_link = FUNC4 (back_link, 1))
    {
      rtx insn1 = FUNC4 (back_link, 0);

      if (FUNC1 (back_link) == VOIDmode)
	{
	  /* Found a DEF-USE dependence (insn1, load_insn).  */
	  rtx fore_link;

	  for (fore_link = FUNC2 (insn1);
	       fore_link;
	       fore_link = FUNC4 (fore_link, 1))
	    {
	      rtx insn2 = FUNC4 (fore_link, 0);
	      basic_block insn2_block = FUNC0 (insn2);

	      if (FUNC1 (fore_link) == VOIDmode)
		{
		  if (earliest_block != NULL
		      && earliest_block->index < insn2_block->index)
		    continue;

		  /* Found a DEF-USE dependence (insn1, insn2).  */
		  if (FUNC5 (insn2) != PFREE_CANDIDATE)
		    /* insn2 not guaranteed to be a 1 base reg load.  */
		    continue;

		  for (bb = last_block; bb; bb = bb->aux)
		    if (insn2_block == bb)
		      break;

		  if (!bb)
		    /* insn2 is the similar load.  */
		    earliest_block = insn2_block;
		}
	    }
	}
    }

  return earliest_block;
}