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
struct hash_table {scalar_t__ set_p; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ CALL ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  REG_EH_REGION ; 
 int /*<<< orphan*/  REG_EQUIV ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ flag_gcse_las ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,struct hash_table*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int,struct hash_table*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__,struct hash_table*) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 

__attribute__((used)) static void
FUNC25 (rtx pat, rtx insn, struct hash_table *table)
{
  rtx src = FUNC9 (pat);
  rtx dest = FUNC8 (pat);
  rtx note;

  if (FUNC2 (src) == CALL)
    FUNC16 (src, insn, table);

  else if (FUNC7 (dest))
    {
      unsigned int regno = FUNC6 (dest);
      rtx tmp;

      /* See if a REG_NOTE shows this equivalent to a simpler expression.
	 This allows us to do a single GCSE pass and still eliminate
	 redundant constants, addresses or other expressions that are
	 constructed with multiple instructions.  */
      note = FUNC12 (insn);
      if (note != 0
	  && (table->set_p
	      ? FUNC14 (FUNC10 (note, 0))
	      : FUNC24 (FUNC10 (note, 0))))
	src = FUNC10 (note, 0), pat = FUNC15 (VOIDmode, dest, src);

      /* Only record sets of pseudo-regs in the hash table.  */
      if (! table->set_p
	  && regno >= FIRST_PSEUDO_REGISTER
	  /* Don't GCSE something if we can't do a reg/reg copy.  */
	  && FUNC11 (FUNC3 (dest))
	  /* GCSE commonly inserts instruction after the insn.  We can't
	     do that easily for EH_REGION notes so disable GCSE on these
	     for now.  */
	  && !FUNC13 (insn, REG_EH_REGION, NULL_RTX)
	  /* Is SET_SRC something we want to gcse?  */
	  && FUNC24 (src)
	  /* Don't CSE a nop.  */
	  && ! FUNC22 (pat)
	  /* Don't GCSE if it has attached REG_EQUIV note.
	     At this point this only function parameters should have
	     REG_EQUIV notes and if the argument slot is used somewhere
	     explicitly, it means address of parameter has been taken,
	     so we should not extend the lifetime of the pseudo.  */
	  && (note == NULL_RTX || ! FUNC5 (FUNC10 (note, 0))))
	{
	  /* An expression is not anticipatable if its operands are
	     modified before this insn or if this is not the only SET in
	     this insn.  */
	  int antic_p = FUNC20 (src, insn) && FUNC23 (insn);
	  /* An expression is not available if its operands are
	     subsequently modified, including this insn.  It's also not
	     available if this is a branch, because we can't insert
	     a set after the branch.  */
	  int avail_p = (FUNC21 (src, insn)
			 && ! FUNC4 (insn));

	  FUNC17 (src, FUNC3 (dest), insn, antic_p, avail_p, table);
	}

      /* Record sets for constant/copy propagation.  */
      else if (table->set_p
	       && regno >= FIRST_PSEUDO_REGISTER
	       && ((FUNC7 (src)
		    && FUNC6 (src) >= FIRST_PSEUDO_REGISTER
		    && FUNC11 (FUNC3 (dest))
		    && FUNC6 (src) != regno)
		   || FUNC14 (src))
	       /* A copy is not available if its src or dest is subsequently
		  modified.  Here we want to search from INSN+1 on, but
		  oprs_available_p searches from INSN on.  */
	       && (insn == FUNC0 (FUNC1 (insn))
		   || ((tmp = FUNC19 (insn)) != NULL_RTX
		       && FUNC21 (pat, tmp))))
	FUNC18 (pat, insn, table);
    }
  /* In case of store we want to consider the memory value as available in
     the REG stored in that memory. This makes it possible to remove
     redundant loads from due to stores to the same location.  */
  else if (flag_gcse_las && FUNC7 (src) && FUNC5 (dest))
      {
        unsigned int regno = FUNC6 (src);

        /* Do not do this for constant/copy propagation.  */
        if (! table->set_p
            /* Only record sets of pseudo-regs in the hash table.  */
	    && regno >= FIRST_PSEUDO_REGISTER
	   /* Don't GCSE something if we can't do a reg/reg copy.  */
	   && FUNC11 (FUNC3 (src))
	   /* GCSE commonly inserts instruction after the insn.  We can't
	      do that easily for EH_REGION notes so disable GCSE on these
	      for now.  */
	   && ! FUNC13 (insn, REG_EH_REGION, NULL_RTX)
	   /* Is SET_DEST something we want to gcse?  */
	   && FUNC24 (dest)
	   /* Don't CSE a nop.  */
	   && ! FUNC22 (pat)
	   /* Don't GCSE if it has attached REG_EQUIV note.
	      At this point this only function parameters should have
	      REG_EQUIV notes and if the argument slot is used somewhere
	      explicitly, it means address of parameter has been taken,
	      so we should not extend the lifetime of the pseudo.  */
	   && ((note = FUNC13 (insn, REG_EQUIV, NULL_RTX)) == 0
	       || ! FUNC5 (FUNC10 (note, 0))))
             {
               /* Stores are never anticipatable.  */
               int antic_p = 0;
	       /* An expression is not available if its operands are
	          subsequently modified, including this insn.  It's also not
	          available if this is a branch, because we can't insert
	          a set after the branch.  */
               int avail_p = FUNC21 (dest, insn)
			     && ! FUNC4 (insn);

	       /* Record the memory expression (DEST) in the hash table.  */
	       FUNC17 (dest, FUNC3 (dest), insn,
				     antic_p, avail_p, table);
             }
      }
}