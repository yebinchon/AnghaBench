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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  subvar_t ;
struct ptr_info_def {int dummy; } ;
struct data_reference {int dummy; } ;

/* Variables and functions */
#define  ADDR_EXPR 131 
 int INTEGER_CST ; 
#define  MINUS_EXPR 130 
 int /*<<< orphan*/  NULL_TREE ; 
#define  PLUS_EXPR 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SSA_NAME 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct data_reference**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ptr_info_def**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ssizetype ; 

__attribute__((used)) static tree
FUNC12 (tree expr, tree stmt, bool is_read, struct data_reference *dr, 
		  tree *offset, tree *misalign, tree *aligned_to, tree *step)
{
  tree oprnd0, oprnd1, base_address, offset_expr, base_addr0, base_addr1;
  tree address_offset = FUNC11 (0), address_misalign = FUNC11 (0);
  tree dummy, address_aligned_to = NULL_TREE;
  struct ptr_info_def *dummy1;
  subvar_t dummy2;

  switch (FUNC2 (expr))
    {
    case PLUS_EXPR:
    case MINUS_EXPR:
      /* EXPR is of form {base +/- offset} (or {offset +/- base}).  */
      oprnd0 = FUNC3 (expr, 0);
      oprnd1 = FUNC3 (expr, 1);

      FUNC1 (oprnd0);
      FUNC1 (oprnd1);
      
      /* Recursively try to find the base of the address contained in EXPR.
	 For offset, the returned base will be NULL.  */
      base_addr0 = FUNC12 (oprnd0, stmt, is_read, dr, &address_offset, 
				     &address_misalign, &address_aligned_to, 
				     step);

      base_addr1 = FUNC12 (oprnd1, stmt, is_read,  dr, &address_offset, 
				     &address_misalign, &address_aligned_to, 
				     step);

      /* We support cases where only one of the operands contains an 
	 address.  */
      if ((base_addr0 && base_addr1) || (!base_addr0 && !base_addr1))
	{
	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC7 (dump_file, 
		    "\neither more than one address or no addresses in expr ");
	      FUNC9 (dump_file, expr, TDF_SLIM);
	      FUNC7 (dump_file, "\n");
	    }	
	  return NULL_TREE;
	}

      /* To revert STRIP_NOPS.  */
      oprnd0 = FUNC3 (expr, 0);
      oprnd1 = FUNC3 (expr, 1);
      
      offset_expr = base_addr0 ? 
	FUNC6 (ssizetype, oprnd1) : FUNC6 (ssizetype, oprnd0);

      /* EXPR is of form {base +/- offset} (or {offset +/- base}). If offset is 
	 a number, we can add it to the misalignment value calculated for base,
	 otherwise, misalignment is NULL.  */
      if (FUNC2 (offset_expr) == INTEGER_CST && address_misalign)
	{
	  *misalign = FUNC10 (FUNC2 (expr), address_misalign, 
				  offset_expr);
	  *aligned_to = address_aligned_to;
	}
      else
	{
	  *misalign = NULL_TREE;
	  *aligned_to = NULL_TREE;
	}

      /* Combine offset (from EXPR {base + offset}) with the offset calculated
	 for base.  */
      *offset = FUNC10 (FUNC2 (expr), address_offset, offset_expr);
      return base_addr0 ? base_addr0 : base_addr1;

    case ADDR_EXPR:
      base_address = FUNC8 (FUNC3 (expr, 0), stmt, is_read, 
				      &dr, offset, misalign, aligned_to, step, 
				      &dummy, &dummy1, &dummy2);
      return base_address;

    case SSA_NAME:
      if (!FUNC0 (FUNC4 (expr)))
	{
	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC7 (dump_file, "\nnot pointer SSA_NAME ");
	      FUNC9 (dump_file, expr, TDF_SLIM);
	      FUNC7 (dump_file, "\n");
	    }	
	  return NULL_TREE;
	}
      *aligned_to = FUNC11 (FUNC5 (FUNC4 (FUNC4 (expr))));
      *misalign = FUNC11 (0);
      *offset = FUNC11 (0);
      *step = FUNC11 (0);
      return expr;
      
    default:
      return NULL_TREE;
    }
}