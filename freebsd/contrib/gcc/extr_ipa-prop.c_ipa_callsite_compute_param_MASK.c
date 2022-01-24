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
typedef  scalar_t__ tree ;
struct cgraph_node {int dummy; } ;
struct cgraph_edge {int dummy; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ CALL_EXPR ; 
 scalar_t__ CONST_DECL ; 
 int /*<<< orphan*/  CONST_IPATYPE ; 
 int /*<<< orphan*/  CONST_IPATYPE_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FORMAL_IPATYPE ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  UNKNOWN_IPATYPE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 struct cgraph_node* FUNC7 (struct cgraph_edge*) ; 
 scalar_t__ FUNC8 (struct cgraph_edge*) ; 
 int /*<<< orphan*/  FUNC9 (struct cgraph_edge*) ; 
 int /*<<< orphan*/  FUNC10 (struct cgraph_edge*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct cgraph_edge*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct cgraph_edge*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cgraph_edge*) ; 
 scalar_t__ FUNC14 (struct cgraph_node*,int) ; 
 int FUNC15 (struct cgraph_node*,scalar_t__) ; 

void
FUNC16 (struct cgraph_edge *cs)
{
  tree call_tree;
  tree arg, cst_decl;
  int arg_num;
  int i;
  struct cgraph_node *mt;

  if (FUNC8 (cs) == 0)
    return;
  FUNC9 (cs);
  call_tree = FUNC6 (FUNC13 (cs));
  FUNC5 (FUNC2 (call_tree) == CALL_EXPR);
  arg = FUNC3 (call_tree, 1);
  arg_num = 0;

  for (; arg != NULL_TREE; arg = FUNC1 (arg))
    {
      /* If the formal parameter was passed as argument, we store 
         FORMAL_IPATYPE and its index in the caller as the jump function 
         of this argument.  */
      if (FUNC2 (FUNC4 (arg)) == PARM_DECL)
	{
	  mt = FUNC7 (cs);
	  i = FUNC15 (mt, FUNC4 (arg));
	  if (i < 0 || FUNC14 (mt, i))
	    FUNC12 (cs, arg_num, UNKNOWN_IPATYPE);
	  else
	    {
	      FUNC12 (cs, arg_num, FORMAL_IPATYPE);
	      FUNC11 (cs, arg_num, i);
	    }
	}
      /* If a constant value was passed as argument, 
         we store CONST_IPATYPE and its value as the jump function 
         of this argument.  */
      else if (FUNC2 (FUNC4 (arg)) == INTEGER_CST
	       || FUNC2 (FUNC4 (arg)) == REAL_CST)
	{
	  FUNC12 (cs, arg_num, CONST_IPATYPE);
	  FUNC10 (cs, arg_num,
					    FUNC4 (arg));
	}
      /* This is for the case of Fortran. If the address of a const_decl 
         was passed as argument then we store 
         CONST_IPATYPE_REF/CONST_IPATYPE_REF and the constant 
         value as the jump function corresponding to this argument.  */
      else if (FUNC2 (FUNC4 (arg)) == ADDR_EXPR
	       && FUNC2 (FUNC3 (FUNC4 (arg), 0)) ==
	       CONST_DECL)
	{
	  cst_decl = FUNC3 (FUNC4 (arg), 0);
	  if (FUNC2 (FUNC0 (cst_decl)) == INTEGER_CST
	      || FUNC2 (FUNC0 (cst_decl)) == REAL_CST)
	    {
	      FUNC12 (cs, arg_num,
					   CONST_IPATYPE_REF);
	      FUNC10 (cs, arg_num,
						FUNC0 (cst_decl));
	    }
	}
      else
	FUNC12 (cs, arg_num, UNKNOWN_IPATYPE);
      arg_num++;
    }
}