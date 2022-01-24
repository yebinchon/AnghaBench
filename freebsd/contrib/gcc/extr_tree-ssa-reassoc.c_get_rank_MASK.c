#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  TYPE_1__* operand_entry_t ;
struct TYPE_5__ {size_t index; } ;
struct TYPE_4__ {unsigned int rank; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SSA_OP_VIRTUAL_DEFS ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (scalar_t__) ; 
 unsigned int* bb_rank ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 TYPE_1__* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC14 (tree e)
{
  operand_entry_t vr;

  /* Constants have rank 0.  */
  if (FUNC12 (e))
    return 0;

  /* SSA_NAME's have the rank of the expression they are the result
     of.
     For globals and uninitialized values, the rank is 0.
     For function arguments, use the pre-setup rank.
     For PHI nodes, stores, asm statements, etc, we use the rank of
     the BB.
     For simple operations, the rank is the maximum rank of any of
     its operands, or the bb_rank, whichever is less.
     I make no claims that this is optimal, however, it gives good
     results.  */

  if (FUNC3 (e) == SSA_NAME)
    {
      tree stmt;
      tree rhs;
      unsigned int rank, maxrank;
      int i;

      if (FUNC3 (FUNC2 (e)) == PARM_DECL
	  && e == FUNC8 (FUNC2 (e)))
	return FUNC9 (e)->rank;

      stmt = FUNC1 (e);
      if (FUNC7 (stmt) == NULL)
	return 0;

      if (FUNC3 (stmt) != MODIFY_EXPR
	  || !FUNC6 (stmt, SSA_OP_VIRTUAL_DEFS))
	return bb_rank[FUNC7 (stmt)->index];

      /* If we already have a rank for this expression, use that.  */
      vr = FUNC9 (e);
      if (vr)
	return vr->rank;

      /* Otherwise, find the maximum rank for the operands, or the bb
	 rank, whichever is less.   */
      rank = 0;
      maxrank = bb_rank[FUNC7(stmt)->index];
      rhs = FUNC5 (stmt, 1);
      if (FUNC4 (FUNC3 (rhs)) == 0)
	rank = FUNC0 (rank, FUNC14 (rhs));
      else
	{
	  for (i = 0;
	       i < FUNC4 (FUNC3 (rhs))
		 && FUNC5 (rhs, i)
		 && rank != maxrank;
	       i++)
	    rank = FUNC0(rank, FUNC14 (FUNC5 (rhs, i)));
	}

      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC10 (dump_file, "Rank for ");
	  FUNC13 (dump_file, e, 0);
	  FUNC10 (dump_file, " is %d\n", (rank + 1));
	}

      /* Note the rank in the hashtable so we don't recompute it.  */
      FUNC11 (e, (rank + 1));
      return (rank + 1);
    }

  /* Globals, etc,  are rank 0 */
  return 0;
}