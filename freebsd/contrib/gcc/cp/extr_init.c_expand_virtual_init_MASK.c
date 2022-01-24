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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ current_in_charge_parm ; 
 scalar_t__ current_vtt_parm ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ integer_zero_node ; 

__attribute__((used)) static void
FUNC12 (tree binfo, tree decl)
{
  tree vtbl, vtbl_ptr;
  tree vtt_index;

  /* Compute the initializer for vptr.  */
  vtbl = FUNC7 (binfo);

  /* We may get this vptr from a VTT, if this is a subobject
     constructor or subobject destructor.  */
  vtt_index = FUNC0 (binfo);
  if (vtt_index)
    {
      tree vtbl2;
      tree vtt_parm;

      /* Compute the value to use, when there's a VTT.  */
      vtt_parm = current_vtt_parm;
      vtbl2 = FUNC2 (PLUS_EXPR,
		      FUNC1 (vtt_parm),
		      vtt_parm,
		      vtt_index);
      vtbl2 = FUNC4 (vtbl2, NULL);
      vtbl2 = FUNC8 (FUNC1 (vtbl), vtbl2);

      /* The actual initializer is the VTT value only in the subobject
	 constructor.  In maybe_clone_body we'll substitute NULL for
	 the vtt_parm in the case of the non-subobject constructor.  */
      vtbl = FUNC3 (COND_EXPR,
		     FUNC1 (vtbl),
		     FUNC2 (EQ_EXPR, boolean_type_node,
			     current_in_charge_parm, integer_zero_node),
		     vtbl2,
		     vtbl);
    }

  /* Compute the location of the vtpr.  */
  vtbl_ptr = FUNC6 (FUNC4 (decl, NULL),
			       FUNC1 (binfo));
  FUNC11 (vtbl_ptr != error_mark_node);

  /* Assign the vtable to the vptr.  */
  vtbl = FUNC9 (FUNC1 (vtbl_ptr), vtbl, 0);
  FUNC10 (FUNC5 (vtbl_ptr, NOP_EXPR, vtbl));
}