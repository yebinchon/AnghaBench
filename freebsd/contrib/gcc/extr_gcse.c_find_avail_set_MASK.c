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
struct expr {int /*<<< orphan*/  expr; int /*<<< orphan*/  bitmap_index; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cprop_avin ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 struct expr* FUNC8 (int,int /*<<< orphan*/ *) ; 
 struct expr* FUNC9 (int,struct expr*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_hash_table ; 

__attribute__((used)) static struct expr *
FUNC11 (int regno, rtx insn)
{
  /* SET1 contains the last set found that can be returned to the caller for
     use in a substitution.  */
  struct expr *set1 = 0;

  /* Loops are not possible here.  To get a loop we would need two sets
     available at the start of the block containing INSN.  i.e. we would
     need two sets like this available at the start of the block:

       (set (reg X) (reg Y))
       (set (reg Y) (reg X))

     This can not happen since the set of (reg Y) would have killed the
     set of (reg X) making it unavailable at the start of this block.  */
  while (1)
    {
      rtx src;
      struct expr *set = FUNC8 (regno, &set_hash_table);

      /* Find a set that is available at the start of the block
	 which contains INSN.  */
      while (set)
	{
	  if (FUNC5 (cprop_avin[FUNC0 (insn)], set->bitmap_index))
	    break;
	  set = FUNC9 (regno, set);
	}

      /* If no available set was found we've reached the end of the
	 (possibly empty) copy chain.  */
      if (set == 0)
	break;

      FUNC6 (FUNC1 (set->expr) == SET);

      src = FUNC4 (set->expr);

      /* We know the set is available.
	 Now check that SRC is ANTLOC (i.e. none of the source operands
	 have changed since the start of the block).

         If the source operand changed, we may still use it for the next
         iteration of this loop, but we may not use it for substitutions.  */

      if (FUNC7 (src) || FUNC10 (src, insn))
	set1 = set;

      /* If the source of the set is anything except a register, then
	 we have reached the end of the copy chain.  */
      if (! FUNC3 (src))
	break;

      /* Follow the copy chain, i.e. start another iteration of the loop
	 and see if we have an available copy into SRC.  */
      regno = FUNC2 (src);
    }

  /* SET1 holds the last set that was available and anticipatable at
     INSN.  */
  return set1;
}