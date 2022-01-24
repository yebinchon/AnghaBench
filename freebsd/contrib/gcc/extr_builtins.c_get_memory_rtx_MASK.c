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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ BITS_PER_UNIT ; 
 int /*<<< orphan*/  BLKmode ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ NON_LVALUE_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ SAVE_EXPR ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ VIEW_CONVERT_EXPR ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static rtx
FUNC25 (tree exp, tree len)
{
  rtx addr = FUNC14 (exp, NULL_RTX, ptr_mode, EXPAND_NORMAL);
  rtx mem = FUNC16 (BLKmode, FUNC18 (BLKmode, addr));

  /* Get an expression we can use to find the attributes to assign to MEM.
     If it is an ADDR_EXPR, use the operand.  Otherwise, dereference it if
     we can.  First remove any nops.  */
  while ((FUNC9 (exp) == NOP_EXPR || FUNC9 (exp) == CONVERT_EXPR
	  || FUNC9 (exp) == NON_LVALUE_EXPR)
	 && FUNC8 (FUNC11 (FUNC10 (exp, 0))))
    exp = FUNC10 (exp, 0);

  if (FUNC9 (exp) == ADDR_EXPR)
    exp = FUNC10 (exp, 0);
  else if (FUNC8 (FUNC11 (exp)))
    exp = FUNC13 (INDIRECT_REF, FUNC11 (FUNC11 (exp)), exp);
  else
    exp = NULL;

  /* Honor attributes derived from exp, except for the alias set
     (as builtin stringops may alias with anything) and the size
     (as stringops may access multiple array elements).  */
  if (exp)
    {
      FUNC20 (mem, exp, 0);

      /* Allow the string and memory builtins to overflow from one
	 field into another, see http://gcc.gnu.org/PR23561.
	 Thus avoid COMPONENT_REFs in MEM_EXPR unless we know the whole
	 memory accessed by the string or memory builtin will fit
	 within the field.  */
      if (FUNC6 (mem) && FUNC9 (FUNC6 (mem)) == COMPONENT_REF)
	{
	  tree mem_expr = FUNC6 (mem);
	  HOST_WIDE_INT offset = -1, length = -1;
	  tree inner = exp;

	  while (FUNC9 (inner) == ARRAY_REF
		 || FUNC9 (inner) == NOP_EXPR
		 || FUNC9 (inner) == CONVERT_EXPR
		 || FUNC9 (inner) == NON_LVALUE_EXPR
		 || FUNC9 (inner) == VIEW_CONVERT_EXPR
		 || FUNC9 (inner) == SAVE_EXPR)
	    inner = FUNC10 (inner, 0);

	  FUNC15 (FUNC9 (inner) == COMPONENT_REF);

	  if (FUNC7 (mem)
	      && FUNC4 (FUNC7 (mem)) == CONST_INT)
	    offset = FUNC5 (FUNC7 (mem));

	  if (offset >= 0 && len && FUNC17 (len, 0))
	    length = FUNC24 (len, 0);

	  while (FUNC9 (inner) == COMPONENT_REF)
	    {
	      tree field = FUNC10 (inner, 1);
	      FUNC15 (! FUNC0 (field));
	      FUNC15 (FUNC9 (mem_expr) == COMPONENT_REF);
	      FUNC15 (field == FUNC10 (mem_expr, 1));

	      if (length >= 0
		  && FUNC12 (FUNC11 (inner))
		  && FUNC17 (FUNC12 (FUNC11 (inner)), 0))
		{
		  HOST_WIDE_INT size
		    = FUNC24 (FUNC12 (FUNC11 (inner)), 0);
		  /* If we can prove the memory starting at XEXP (mem, 0)
		     and ending at XEXP (mem, 0) + LENGTH will fit into
		     this field, we can keep that COMPONENT_REF in MEM_EXPR.  */
		  if (offset <= size
		      && length <= size
		      && offset + length <= size)
		    break;
		}

	      if (offset >= 0
		  && FUNC17 (FUNC2 (field), 0))
		offset += FUNC24 (FUNC2 (field), 0)
			  + FUNC24 (FUNC1 (field), 1)
			    / BITS_PER_UNIT;
	      else
		{
		  offset = -1;
		  length = -1;
		}

	      mem_expr = FUNC10 (mem_expr, 0);
	      inner = FUNC10 (inner, 0);
	    }

	  if (mem_expr == NULL)
	    offset = -1;
	  if (mem_expr != FUNC6 (mem))
	    {
	      FUNC21 (mem, mem_expr);
	      FUNC22 (mem, offset >= 0 ? FUNC3 (offset) : NULL_RTX);
	    }
	}
      FUNC19 (mem, 0);
      FUNC23 (mem, NULL_RTX);
    }

  return mem;
}