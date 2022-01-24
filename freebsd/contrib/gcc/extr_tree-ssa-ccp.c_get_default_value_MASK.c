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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {void* lattice_val; int /*<<< orphan*/  mem_ref; scalar_t__ value; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ prop_value_t ;

/* Variables and functions */
 void* CONSTANT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ PHI_NODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 void* UNDEFINED ; 
 int /*<<< orphan*/  UNINITIALIZED ; 
 void* UNKNOWN_VAL ; 
 void* VARYING ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ do_store_ccp ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static prop_value_t
FUNC12 (tree var)
{
  tree sym = FUNC5 (var);
  prop_value_t val = { UNINITIALIZED, NULL_TREE, NULL_TREE };

  if (!do_store_ccp && !FUNC11 (var))
    {
      /* Short circuit for regular CCP.  We are not interested in any
	 non-register when DO_STORE_CCP is false.  */
      val.lattice_val = VARYING;
    }
  else if (FUNC4 (var)
	   && FUNC10 (FUNC4 (var)))
    {
      val.lattice_val = CONSTANT;
      val.value = FUNC4 (var);
    }
  else if (FUNC8 (sym)
	   && FUNC7 (sym)
	   && !FUNC2 (sym)
	   && FUNC0 (sym)
	   && FUNC9 (FUNC0 (sym)))
    {
      /* Globals and static variables declared 'const' take their
	 initial value.  */
      val.lattice_val = CONSTANT;
      val.value = FUNC0 (sym);
      val.mem_ref = sym;
    }
  else
    {
      tree stmt = FUNC3 (var);

      if (FUNC1 (stmt))
	{
	  /* Variables defined by an empty statement are those used
	     before being initialized.  If VAR is a local variable, we
	     can assume initially that it is UNDEFINED.  If we are
	     doing STORE-CCP, function arguments and non-register
	     variables are initially UNKNOWN_VAL, because we cannot
	     discard the value incoming from outside of this function
	     (see ccp_lattice_meet for details).  */
	  if (FUNC11 (sym) && FUNC6 (sym) != PARM_DECL)
	    val.lattice_val = UNDEFINED;
	  else if (do_store_ccp)
	    val.lattice_val = UNKNOWN_VAL;
	  else
	    val.lattice_val = VARYING;
	}
      else if (FUNC6 (stmt) == MODIFY_EXPR
	       || FUNC6 (stmt) == PHI_NODE)
	{
	  /* Any other variable defined by an assignment or a PHI node
	     is considered UNDEFINED (or UNKNOWN_VAL if VAR is not a
	     GIMPLE register).  */
	  val.lattice_val = FUNC11 (sym) ? UNDEFINED : UNKNOWN_VAL;
	}
      else
	{
	  /* Otherwise, VAR will never take on a constant value.  */
	  val.lattice_val = VARYING;
	}
    }

  return val;
}