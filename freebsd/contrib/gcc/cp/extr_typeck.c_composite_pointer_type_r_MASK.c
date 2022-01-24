#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ (* merge_type_attributes ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static tree
FUNC15 (tree t1, tree t2, const char* location)
{
  tree pointee1;
  tree pointee2;
  tree result_type;
  tree attributes;

  /* Determine the types pointed to by T1 and T2.  */
  /* APPLE LOCAL blocks 6040305 */
  if (FUNC0 (t1) == POINTER_TYPE || FUNC0 (t1) == BLOCK_POINTER_TYPE)
    {
      pointee1 = FUNC1 (t1);
      pointee2 = FUNC1 (t2);
    }
  else
    {
      pointee1 = FUNC3 (t1);
      pointee2 = FUNC3 (t2);
    }

  /* [expr.rel]

     Otherwise, the composite pointer type is a pointer type
     similar (_conv.qual_) to the type of one of the operands,
     with a cv-qualification signature (_conv.qual_) that is the
     union of the cv-qualification signatures of the operand
     types.  */
  if (FUNC12 (pointee1, pointee2))
    result_type = pointee1;
  else if ((FUNC0 (pointee1) == POINTER_TYPE
	    && FUNC0 (pointee2) == POINTER_TYPE)
	   || (FUNC4 (pointee1)
	       && FUNC4 (pointee2)))
    result_type = FUNC15 (pointee1, pointee2, location);
  else
    {
      FUNC11 ("%s between distinct pointer types %qT and %qT "
	       "lacks a cast",
	       location, t1, t2);
      result_type = void_type_node;
    }
  result_type = FUNC9 (result_type,
					 (FUNC10 (pointee1)
					  | FUNC10 (pointee2)));
  /* If the original types were pointers to members, so is the
     result.  */
  if (FUNC4 (t1))
    {
      if (!FUNC13 (FUNC2 (t1),
			FUNC2 (t2)))
	FUNC11 ("%s between distinct pointer types %qT and %qT "
		 "lacks a cast",
		 location, t1, t2);
      result_type = FUNC7 (FUNC2 (t1),
				       result_type);
    }
  /* APPLE LOCAL begin blocks 6065211 */
  else if (FUNC0 (t1) == BLOCK_POINTER_TYPE
     && result_type != void_type_node)
    result_type = FUNC5 (result_type);
  else
    result_type = FUNC6 (result_type);
  /* APPLE LOCAL end blocks 6065211 */

  /* Merge the attributes.  */
  attributes = (*targetm.merge_type_attributes) (t1, t2);
  return FUNC8 (result_type, attributes);
}