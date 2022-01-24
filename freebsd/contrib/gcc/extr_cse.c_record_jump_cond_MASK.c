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
struct table_elt {scalar_t__ first_same_value; int in_memory; } ;
struct qty_table_elem {int comparison_code; int comparison_qty; scalar_t__ comparison_const; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EQ ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 unsigned int FUNC5 (scalar_t__,int) ; 
 int NE ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ do_not_record ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int hash_arg_in_memory ; 
 struct table_elt* FUNC11 (scalar_t__,int /*<<< orphan*/ *,unsigned int,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct table_elt* FUNC13 (scalar_t__,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct table_elt*,struct table_elt*) ; 
 struct qty_table_elem* qty_table ; 
 scalar_t__ FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 

__attribute__((used)) static void
FUNC19 (enum rtx_code code, enum machine_mode mode, rtx op0,
		  rtx op1, int reversed_nonequality)
{
  unsigned op0_hash, op1_hash;
  int op0_in_memory, op1_in_memory;
  struct table_elt *op0_elt, *op1_elt;

  /* If OP0 and OP1 are known equal, and either is a paradoxical SUBREG,
     we know that they are also equal in the smaller mode (this is also
     true for all smaller modes whether or not there is a SUBREG, but
     is not worth testing for with no SUBREG).  */

  /* Note that GET_MODE (op0) may not equal MODE.  */
  if (code == EQ && FUNC2 (op0) == SUBREG
      && (FUNC4 (FUNC3 (op0))
	  > FUNC4 (FUNC3 (FUNC9 (op0)))))
    {
      enum machine_mode inner_mode = FUNC3 (FUNC9 (op0));
      rtx tem = FUNC15 (inner_mode, op1);
      if (tem)
	FUNC19 (code, mode, FUNC9 (op0), tem,
			  reversed_nonequality);
    }

  if (code == EQ && FUNC2 (op1) == SUBREG
      && (FUNC4 (FUNC3 (op1))
	  > FUNC4 (FUNC3 (FUNC9 (op1)))))
    {
      enum machine_mode inner_mode = FUNC3 (FUNC9 (op1));
      rtx tem = FUNC15 (inner_mode, op0);
      if (tem)
	FUNC19 (code, mode, FUNC9 (op1), tem,
			  reversed_nonequality);
    }

  /* Similarly, if this is an NE comparison, and either is a SUBREG
     making a smaller mode, we know the whole thing is also NE.  */

  /* Note that GET_MODE (op0) may not equal MODE;
     if we test MODE instead, we can get an infinite recursion
     alternating between two modes each wider than MODE.  */

  if (code == NE && FUNC2 (op0) == SUBREG
      && FUNC18 (op0)
      && (FUNC4 (FUNC3 (op0))
	  < FUNC4 (FUNC3 (FUNC9 (op0)))))
    {
      enum machine_mode inner_mode = FUNC3 (FUNC9 (op0));
      rtx tem = FUNC15 (inner_mode, op1);
      if (tem)
	FUNC19 (code, mode, FUNC9 (op0), tem,
			  reversed_nonequality);
    }

  if (code == NE && FUNC2 (op1) == SUBREG
      && FUNC18 (op1)
      && (FUNC4 (FUNC3 (op1))
	  < FUNC4 (FUNC3 (FUNC9 (op1)))))
    {
      enum machine_mode inner_mode = FUNC3 (FUNC9 (op1));
      rtx tem = FUNC15 (inner_mode, op0);
      if (tem)
	FUNC19 (code, mode, FUNC9 (op1), tem,
			  reversed_nonequality);
    }

  /* Hash both operands.  */

  do_not_record = 0;
  hash_arg_in_memory = 0;
  op0_hash = FUNC5 (op0, mode);
  op0_in_memory = hash_arg_in_memory;

  if (do_not_record)
    return;

  do_not_record = 0;
  hash_arg_in_memory = 0;
  op1_hash = FUNC5 (op1, mode);
  op1_in_memory = hash_arg_in_memory;

  if (do_not_record)
    return;

  /* Look up both operands.  */
  op0_elt = FUNC13 (op0, op0_hash, mode);
  op1_elt = FUNC13 (op1, op1_hash, mode);

  /* If both operands are already equivalent or if they are not in the
     table but are identical, do nothing.  */
  if ((op0_elt != 0 && op1_elt != 0
       && op0_elt->first_same_value == op1_elt->first_same_value)
      || op0 == op1 || FUNC17 (op0, op1))
    return;

  /* If we aren't setting two things equal all we can do is save this
     comparison.   Similarly if this is floating-point.  In the latter
     case, OP1 might be zero and both -0.0 and 0.0 are equal to it.
     If we record the equality, we might inadvertently delete code
     whose intent was to change -0 to +0.  */

  if (code != EQ || FUNC1 (FUNC3 (op0)))
    {
      struct qty_table_elem *ent;
      int qty;

      /* If we reversed a floating-point comparison, if OP0 is not a
	 register, or if OP1 is neither a register or constant, we can't
	 do anything.  */

      if (!FUNC7 (op1))
	op1 = FUNC10 (op1);

      if ((reversed_nonequality && FUNC1 (mode))
	  || !FUNC7 (op0) || op1 == 0)
	return;

      /* Put OP0 in the hash table if it isn't already.  This gives it a
	 new quantity number.  */
      if (op0_elt == 0)
	{
	  if (FUNC12 (op0, NULL, 0))
	    {
	      FUNC16 (op0);
	      op0_hash = FUNC5 (op0, mode);

	      /* If OP0 is contained in OP1, this changes its hash code
		 as well.  Faster to rehash than to check, except
		 for the simple case of a constant.  */
	      if (! FUNC0 (op1))
		op1_hash = FUNC5 (op1,mode);
	    }

	  op0_elt = FUNC11 (op0, NULL, op0_hash, mode);
	  op0_elt->in_memory = op0_in_memory;
	}

      qty = FUNC8 (FUNC6 (op0));
      ent = &qty_table[qty];

      ent->comparison_code = code;
      if (FUNC7 (op1))
	{
	  /* Look it up again--in case op0 and op1 are the same.  */
	  op1_elt = FUNC13 (op1, op1_hash, mode);

	  /* Put OP1 in the hash table so it gets a new quantity number.  */
	  if (op1_elt == 0)
	    {
	      if (FUNC12 (op1, NULL, 0))
		{
		  FUNC16 (op1);
		  op1_hash = FUNC5 (op1, mode);
		}

	      op1_elt = FUNC11 (op1, NULL, op1_hash, mode);
	      op1_elt->in_memory = op1_in_memory;
	    }

	  ent->comparison_const = NULL_RTX;
	  ent->comparison_qty = FUNC8 (FUNC6 (op1));
	}
      else
	{
	  ent->comparison_const = op1;
	  ent->comparison_qty = -1;
	}

      return;
    }

  /* If either side is still missing an equivalence, make it now,
     then merge the equivalences.  */

  if (op0_elt == 0)
    {
      if (FUNC12 (op0, NULL, 0))
	{
	  FUNC16 (op0);
	  op0_hash = FUNC5 (op0, mode);
	}

      op0_elt = FUNC11 (op0, NULL, op0_hash, mode);
      op0_elt->in_memory = op0_in_memory;
    }

  if (op1_elt == 0)
    {
      if (FUNC12 (op1, NULL, 0))
	{
	  FUNC16 (op1);
	  op1_hash = FUNC5 (op1, mode);
	}

      op1_elt = FUNC11 (op1, NULL, op1_hash, mode);
      op1_elt->in_memory = op1_in_memory;
    }

  FUNC14 (op0_elt, op1_elt);
}