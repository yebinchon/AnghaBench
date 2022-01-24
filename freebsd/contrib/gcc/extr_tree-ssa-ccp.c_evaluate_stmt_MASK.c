#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_3__ {void* value; scalar_t__ lattice_val; void* mem_ref; } ;
typedef  TYPE_1__ prop_value_t ;
typedef  scalar_t__ ccp_lattice_t ;

/* Variables and functions */
 scalar_t__ CONSTANT ; 
 void* NULL_TREE ; 
 scalar_t__ UNDEFINED ; 
 scalar_t__ UNKNOWN_VAL ; 
 scalar_t__ VARYING ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 

__attribute__((used)) static prop_value_t
FUNC7 (tree stmt)
{
  prop_value_t val;
  tree simplified = NULL_TREE;
  ccp_lattice_t likelyvalue = FUNC6 (stmt);
  bool is_constant;

  val.mem_ref = NULL_TREE;

  FUNC2 ();

  /* If the statement is likely to have a CONSTANT result, then try
     to fold the statement to determine the constant value.  */
  if (likelyvalue == CONSTANT)
    simplified = FUNC0 (stmt);
  /* If the statement is likely to have a VARYING result, then do not
     bother folding the statement.  */
  if (likelyvalue == VARYING)
    simplified = FUNC4 (stmt);
  /* If the statement is an ARRAY_REF or COMPONENT_REF into constant
     aggregates, extract the referenced constant.  Otherwise the
     statement is likely to have an UNDEFINED value, and there will be
     nothing to do.  Note that fold_const_aggregate_ref returns
     NULL_TREE if the first case does not match.  */
  else if (!simplified)
    simplified = FUNC1 (FUNC4 (stmt));

  is_constant = simplified && FUNC5 (simplified);

  FUNC3 (is_constant, stmt, 0);

  if (is_constant)
    {
      /* The statement produced a constant value.  */
      val.lattice_val = CONSTANT;
      val.value = simplified;
    }
  else
    {
      /* The statement produced a nonconstant value.  If the statement
	 had UNDEFINED operands, then the result of the statement
	 should be UNDEFINED.  Otherwise, the statement is VARYING.  */
      if (likelyvalue == UNDEFINED || likelyvalue == UNKNOWN_VAL)
	val.lattice_val = likelyvalue;
      else
	val.lattice_val = VARYING;

      val.value = NULL_TREE;
    }

  return val;
}