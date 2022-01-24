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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static tree
FUNC11 (tree t1, tree t2)
{
  tree attributes;
  tree pointed_to_1, mv1;
  tree pointed_to_2, mv2;
  tree target;

  /* Save time if the two types are the same.  */

  if (t1 == t2) return t1;

  /* If one type is nonsense, use the other.  */
  if (t1 == error_mark_node)
    return t2;
  if (t2 == error_mark_node)
    return t1;

  /* APPLE LOCAL begin blocks 6065211 */
  FUNC9 ((FUNC0 (t1) == POINTER_TYPE
	       && FUNC0 (t2) == POINTER_TYPE)
	      || (FUNC0 (t1) == BLOCK_POINTER_TYPE
		  && FUNC0 (t2) == BLOCK_POINTER_TYPE));
  /* APPLE LOCAL end blocks 6065211 */

  /* Merge the attributes.  */
  attributes = targetm.merge_type_attributes (t1, t2);

  /* Find the composite type of the target types, and combine the
     qualifiers of the two types' targets.  Do not lose qualifiers on
     array element types by taking the TYPE_MAIN_VARIANT.  */
  mv1 = pointed_to_1 = FUNC1 (t1);
  mv2 = pointed_to_2 = FUNC1 (t2);
  if (FUNC0 (mv1) != ARRAY_TYPE)
    mv1 = FUNC2 (pointed_to_1);
  if (FUNC0 (mv2) != ARRAY_TYPE)
    mv2 = FUNC2 (pointed_to_2);
  target = FUNC8 (mv1, mv2);
  /* APPLE LOCAL begin blocks 6065211 */
  t1 = FUNC7 (target,
			       FUNC3 (pointed_to_1) |
			       FUNC3 (pointed_to_2));
  if (FUNC0 (t2) == BLOCK_POINTER_TYPE)
    t1 = FUNC4 (t1);
  else
    t1 = FUNC5 (t1);
  /* APPLE LOCAL end blocks 6065211 */
  return FUNC6 (t1, attributes);
}