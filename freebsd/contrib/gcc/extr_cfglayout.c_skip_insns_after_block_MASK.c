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
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* basic_block ;
struct TYPE_4__ {scalar_t__ next_bb; } ;

/* Variables and functions */
 int ADDR_DIFF_VEC ; 
 int ADDR_VEC ; 
#define  BARRIER 133 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
#define  CODE_LABEL 132 
 scalar_t__ EXIT_BLOCK_PTR ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
#define  NOTE 131 
#define  NOTE_INSN_BLOCK_END 130 
#define  NOTE_INSN_DELETED 129 
#define  NOTE_INSN_DELETED_LABEL 128 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC10 (basic_block bb)
{
  rtx insn, last_insn, next_head, prev;

  next_head = NULL_RTX;
  if (bb->next_bb != EXIT_BLOCK_PTR)
    next_head = FUNC1 (bb->next_bb);

  for (last_insn = insn = FUNC0 (bb); (insn = FUNC4 (insn)) != 0; )
    {
      if (insn == next_head)
	break;

      switch (FUNC2 (insn))
	{
	case BARRIER:
	  last_insn = insn;
	  continue;

	case NOTE:
	  switch (FUNC5 (insn))
	    {
	    case NOTE_INSN_BLOCK_END:
	      last_insn = insn;
	      continue;
	    case NOTE_INSN_DELETED:
	    case NOTE_INSN_DELETED_LABEL:
	      continue;

	    default:
	      continue;
	      break;
	    }
	  break;

	case CODE_LABEL:
	  if (FUNC4 (insn)
	      && FUNC3 (FUNC4 (insn))
	      && (FUNC2 (FUNC7 (FUNC4 (insn))) == ADDR_VEC
		  || FUNC2 (FUNC7 (FUNC4 (insn))) == ADDR_DIFF_VEC))
	    {
	      insn = FUNC4 (insn);
	      last_insn = insn;
	      continue;
	    }
	  break;

	default:
	  break;
	}

      break;
    }

  /* It is possible to hit contradictory sequence.  For instance:

     jump_insn
     NOTE_INSN_BLOCK_BEG
     barrier

     Where barrier belongs to jump_insn, but the note does not.  This can be
     created by removing the basic block originally following
     NOTE_INSN_BLOCK_BEG.  In such case reorder the notes.  */

  for (insn = last_insn; insn != FUNC0 (bb); insn = prev)
    {
      prev = FUNC8 (insn);
      if (FUNC6 (insn))
	switch (FUNC5 (insn))
	  {
	  case NOTE_INSN_BLOCK_END:
	  case NOTE_INSN_DELETED:
	  case NOTE_INSN_DELETED_LABEL:
	    continue;
	  default:
	    FUNC9 (insn, insn, last_insn);
	  }
    }

  return last_insn;
}