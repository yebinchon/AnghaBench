#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  scalar_t__ tree ;
struct TYPE_4__ {int /*<<< orphan*/  (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  num_copy_prop; int /*<<< orphan*/  num_const_prop; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ASM_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VALUE_HANDLE ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,...) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 TYPE_1__ opt_stats ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC17 (tree stmt, use_operand_p op_p)
{
  bool may_have_exposed_new_symbols = false;
  tree val;
  tree op = FUNC4 (op_p);

  /* If the operand has a known constant value or it is known to be a
     copy of some other variable, use the value or copy stored in
     CONST_AND_COPIES.  */
  val = FUNC1 (op);
  if (val && val != op && FUNC2 (val) != VALUE_HANDLE)
    {
      tree op_type, val_type;

      /* Do not change the base variable in the virtual operand
	 tables.  That would make it impossible to reconstruct
	 the renamed virtual operand if we later modify this
	 statement.  Also only allow the new value to be an SSA_NAME
	 for propagation into virtual operands.  */
      if (!FUNC9 (op)
	  && (FUNC2 (val) != SSA_NAME
	      || FUNC9 (val)
	      || FUNC7 (val) != FUNC7 (op)))
	return false;

      /* Do not replace hard register operands in asm statements.  */
      if (FUNC2 (stmt) == ASM_EXPR
	  && !FUNC13 (op))
	return false;

      /* Get the toplevel type of each operand.  */
      op_type = FUNC3 (op);
      val_type = FUNC3 (val);

      /* While both types are pointers, get the type of the object
	 pointed to.  */
      while (FUNC0 (op_type) && FUNC0 (val_type))
	{
	  op_type = FUNC3 (op_type);
	  val_type = FUNC3 (val_type);
	}

      /* Make sure underlying types match before propagating a constant by
	 converting the constant to the proper type.  Note that convert may
	 return a non-gimple expression, in which case we ignore this
	 propagation opportunity.  */
      if (FUNC2 (val) != SSA_NAME)
	{
	  if (!lang_hooks.types_compatible_p (op_type, val_type))
	    {
	      val = FUNC5 (FUNC3 (op), val);
	      if (!FUNC8 (val))
		return false;
	    }
	}

      /* Certain operands are not allowed to be copy propagated due
	 to their interaction with exception handling and some GCC
	 extensions.  */
      else if (!FUNC12 (op, val))
	return false;
      
      /* Do not propagate copies if the propagated value is at a deeper loop
	 depth than the propagatee.  Otherwise, this may move loop variant
	 variables outside of their loops and prevent coalescing
	 opportunities.  If the value was loop invariant, it will be hoisted
	 by LICM and exposed for copy propagation.  */
      if (FUNC10 (val) > FUNC10 (op))
	return false;

      /* Dump details.  */
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC6 (dump_file, "  Replaced '");
	  FUNC14 (dump_file, op, dump_flags);
	  FUNC6 (dump_file, "' with %s '",
		   (FUNC2 (val) != SSA_NAME ? "constant" : "variable"));
	  FUNC14 (dump_file, val, dump_flags);
	  FUNC6 (dump_file, "'\n");
	}

      /* If VAL is an ADDR_EXPR or a constant of pointer type, note
	 that we may have exposed a new symbol for SSA renaming.  */
      if (FUNC2 (val) == ADDR_EXPR
	  || (FUNC0 (FUNC3 (op))
	      && FUNC8 (val)))
	may_have_exposed_new_symbols = true;

      if (FUNC2 (val) != SSA_NAME)
	opt_stats.num_const_prop++;
      else
	opt_stats.num_copy_prop++;

      FUNC15 (op_p, val);

      /* And note that we modified this statement.  This is now
	 safe, even if we changed virtual operands since we will
	 rescan the statement and rewrite its operands again.  */
      FUNC11 (stmt);
    }
  return may_have_exposed_new_symbols;
}