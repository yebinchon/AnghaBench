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
typedef  scalar_t__ tree ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wmissing_format_attribute ; 
 int const POINTER_TYPE ; 
 int const REFERENCE_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 TYPE_2__ targetm ; 
 scalar_t__ warn_missing_format_attribute ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 

tree
FUNC17 (tree type, tree val)
{
  tree bitfield_type;

  /* If VAL is a bitfield, then -- since it has already been converted
     to TYPE -- it cannot have a precision greater than TYPE.  

     If it has a smaller precision, we must widen it here.  For
     example, passing "int f:3;" to a function expecting an "int" will
     not result in any conversion before this point.

     If the precision is the same we must not risk widening.  For
     example, the COMPONENT_REF for a 32-bit "long long" bitfield will
     often have type "int", even though the C++ type for the field is
     "long long".  If the value is being passed to a function
     expecting an "int", then no conversions will be required.  But,
     if we call convert_bitfield_to_declared_type, the bitfield will
     be converted to "long long".  */
  bitfield_type = FUNC13 (val);
  if (bitfield_type 
      && FUNC7 (FUNC5 (val)) < FUNC7 (type))
    val = FUNC12 (FUNC6 (bitfield_type), val);

  if (val == error_mark_node)
    ;
  /* Pass classes with copy ctors by invisible reference.  */
  else if (FUNC3 (type))
    val = FUNC9 (ADDR_EXPR, FUNC10 (type), val);
  else if (targetm.calls.promote_prototypes (type)
	   && FUNC1 (type)
	   && FUNC0 (type)
	   && FUNC2 (FUNC8 (type),
				   FUNC8 (integer_type_node)))
    val = FUNC14 (val);
  if (warn_missing_format_attribute)
    {
      tree rhstype = FUNC5 (val);
      const enum tree_code coder = FUNC4 (rhstype);
      const enum tree_code codel = FUNC4 (type);
      if ((codel == POINTER_TYPE || codel == REFERENCE_TYPE)
	  && coder == codel
	  && FUNC11 (type, rhstype))
	FUNC16 (OPT_Wmissing_format_attribute,
		 "argument of function call might be a candidate for a format attribute");
    }
  return val;
}