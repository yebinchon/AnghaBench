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
struct table_elt {int flag; int cost; scalar_t__ exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int ARG_POINTER_REGNUM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ CONST_INT ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ EXPR_LIST ; 
 int FRAME_POINTER_REGNUM ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int HARD_FRAME_POINTER_REGNUM ; 
 unsigned int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEM ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int do_not_record ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ flag_expensive_optimizations ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int hash_arg_in_memory ; 
 struct table_elt* FUNC15 (scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19 (rtx insn, rtx *loc, enum machine_mode mode)
{
  struct table_elt *elt;
  rtx addr = *loc;
  struct table_elt *p;
  int found_better = 1;
  int save_do_not_record = do_not_record;
  int save_hash_arg_in_memory = hash_arg_in_memory;
  int addr_volatile;
  int regno;
  unsigned hash;

  /* Do not try to replace constant addresses or addresses of local and
     argument slots.  These MEM expressions are made only once and inserted
     in many instructions, as well as being used to control symbol table
     output.  It is not safe to clobber them.

     There are some uncommon cases where the address is already in a register
     for some reason, but we cannot take advantage of that because we have
     no easy way to unshare the MEM.  In addition, looking up all stack
     addresses is costly.  */
  if ((FUNC3 (addr) == PLUS
       && FUNC6 (FUNC7 (addr, 0))
       && FUNC3 (FUNC7 (addr, 1)) == CONST_INT
       && (regno = FUNC5 (FUNC7 (addr, 0)),
	   regno == FRAME_POINTER_REGNUM || regno == HARD_FRAME_POINTER_REGNUM
	   || regno == ARG_POINTER_REGNUM))
      || (FUNC6 (addr)
	  && (regno = FUNC5 (addr), regno == FRAME_POINTER_REGNUM
	      || regno == HARD_FRAME_POINTER_REGNUM
	      || regno == ARG_POINTER_REGNUM))
      || FUNC1 (addr))
    return;

  /* If this address is not simply a register, try to fold it.  This will
     sometimes simplify the expression.  Many simplifications
     will not be valid, but some, usually applying the associative rule, will
     be valid and produce better code.  */
  if (!FUNC6 (addr))
    {
      rtx folded = FUNC10 (FUNC14 (addr, NULL_RTX));

      if (folded != addr)
	{
	  int addr_folded_cost = FUNC8 (folded, mode);
	  int addr_cost = FUNC8 (addr, mode);

	  if ((addr_folded_cost < addr_cost
	       || (addr_folded_cost == addr_cost
		   /* ??? The rtx_cost comparison is left over from an older
		      version of this code.  It is probably no longer helpful.*/
		   && (FUNC16 (folded, MEM) > FUNC16 (addr, MEM)
		       || FUNC9 (folded) < FUNC9 (addr))))
	      && FUNC18 (insn, loc, folded, 0))
	    addr = folded;
	}
    }

  /* If this address is not in the hash table, we can't look for equivalences
     of the whole address.  Also, ignore if volatile.  */

  do_not_record = 0;
  hash = FUNC4 (addr, Pmode);
  addr_volatile = do_not_record;
  do_not_record = save_do_not_record;
  hash_arg_in_memory = save_hash_arg_in_memory;

  if (addr_volatile)
    return;

  elt = FUNC15 (addr, hash, Pmode);

  if (elt)
    {
      /* We need to find the best (under the criteria documented above) entry
	 in the class that is valid.  We use the `flag' field to indicate
	 choices that were invalid and iterate until we can't find a better
	 one that hasn't already been tried.  */

      for (p = elt->first_same_value; p; p = p->next_same_value)
	p->flag = 0;

      while (found_better)
	{
	  int best_addr_cost = FUNC8 (*loc, mode);
	  int best_rtx_cost = (elt->cost + 1) >> 1;
	  int exp_cost;
	  struct table_elt *best_elt = elt;

	  found_better = 0;
	  for (p = elt->first_same_value; p; p = p->next_same_value)
	    if (! p->flag)
	      {
		if ((FUNC6 (p->exp)
		     || FUNC13 (p->exp, p->exp, 1, false))
		    && ((exp_cost = FUNC8 (p->exp, mode)) < best_addr_cost
			|| (exp_cost == best_addr_cost
			    && ((p->cost + 1) >> 1) > best_rtx_cost)))
		  {
		    found_better = 1;
		    best_addr_cost = exp_cost;
		    best_rtx_cost = (p->cost + 1) >> 1;
		    best_elt = p;
		  }
	      }

	  if (found_better)
	    {
	      if (FUNC18 (insn, loc,
				   FUNC11 (FUNC12 (best_elt->exp),
					      NULL_RTX), 0))
		return;
	      else
		best_elt->flag = 1;
	    }
	}
    }

  /* If the address is a binary operation with the first operand a register
     and the second a constant, do the same as above, but looking for
     equivalences of the register.  Then try to simplify before checking for
     the best address to use.  This catches a few cases:  First is when we
     have REG+const and the register is another REG+const.  We can often merge
     the constants and eliminate one insn and one register.  It may also be
     that a machine has a cheap REG+REG+const.  Finally, this improves the
     code on the Alpha for unaligned byte stores.  */

  if (flag_expensive_optimizations
      && FUNC0 (*loc)
      && FUNC6 (FUNC7 (*loc, 0)))
    {
      rtx op1 = FUNC7 (*loc, 1);

      do_not_record = 0;
      hash = FUNC4 (FUNC7 (*loc, 0), Pmode);
      do_not_record = save_do_not_record;
      hash_arg_in_memory = save_hash_arg_in_memory;

      elt = FUNC15 (FUNC7 (*loc, 0), hash, Pmode);
      if (elt == 0)
	return;

      /* We need to find the best (under the criteria documented above) entry
	 in the class that is valid.  We use the `flag' field to indicate
	 choices that were invalid and iterate until we can't find a better
	 one that hasn't already been tried.  */

      for (p = elt->first_same_value; p; p = p->next_same_value)
	p->flag = 0;

      while (found_better)
	{
	  int best_addr_cost = FUNC8 (*loc, mode);
	  int best_rtx_cost = (FUNC2 (*loc) + 1) >> 1;
	  struct table_elt *best_elt = elt;
	  rtx best_rtx = *loc;
	  int count;

	  /* This is at worst case an O(n^2) algorithm, so limit our search
	     to the first 32 elements on the list.  This avoids trouble
	     compiling code with very long basic blocks that can easily
	     call simplify_gen_binary so many times that we run out of
	     memory.  */

	  found_better = 0;
	  for (p = elt->first_same_value, count = 0;
	       p && count < 32;
	       p = p->next_same_value, count++)
	    if (! p->flag
		&& (FUNC6 (p->exp)
		    || (FUNC3 (p->exp) != EXPR_LIST
			&& FUNC13 (p->exp, p->exp, 1, false))))

	      {
		rtx new = FUNC17 (FUNC3 (*loc), Pmode,
					       p->exp, op1);
		int new_cost;
		
		/* Get the canonical version of the address so we can accept
		   more.  */
		new = FUNC10 (new);
		
		new_cost = FUNC8 (new, mode);

		if (new_cost < best_addr_cost
		    || (new_cost == best_addr_cost
			&& (FUNC2 (new) + 1) >> 1 > best_rtx_cost))
		  {
		    found_better = 1;
		    best_addr_cost = new_cost;
		    best_rtx_cost = (FUNC2 (new) + 1) >> 1;
		    best_elt = p;
		    best_rtx = new;
		  }
	      }

	  if (found_better)
	    {
	      if (FUNC18 (insn, loc,
				   FUNC11 (FUNC12 (best_rtx),
					      NULL_RTX), 0))
		return;
	      else
		best_elt->flag = 1;
	    }
	}
    }
}