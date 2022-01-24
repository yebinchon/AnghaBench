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
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  scalar_t__ bitmap ;
struct TYPE_3__ {scalar_t__ value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ipa_obstack ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uid_to_addressof_down_map ; 
 int /*<<< orphan*/  uid_to_addressof_up_map ; 

__attribute__((used)) static void
FUNC8 (tree to_type, tree from_type)
{
  int from_uid;
  int to_uid;
  bitmap type_map;
  splay_tree_node result; 

  from_type = FUNC4 (from_type, false, false);
  to_type = FUNC4 (to_type, false, false);
  
  if (!from_type || !to_type)
    return;

  from_uid = FUNC1 (from_type);
  to_uid = FUNC1 (to_type);

  FUNC3 (FUNC5 (from_type) == 0);
  
  /* Process the Y into X map pointer.  */
  result = FUNC7 (uid_to_addressof_down_map, 
			      (splay_tree_key) from_uid);
  
  if (result) 
    type_map = (bitmap) result->value;  
  else 
    {
      type_map = FUNC0 (&ipa_obstack);
      FUNC6 (uid_to_addressof_down_map,
			 from_uid, 
			 (splay_tree_value)type_map);
    }
  FUNC2 (type_map, FUNC1 (to_type));
  
  /* Process the X into Y reverse map pointer.  */
  result = 
    FUNC7 (uid_to_addressof_up_map, (splay_tree_key) to_uid);
  
  if (result) 
    type_map = (bitmap) result->value;  
  else 
    {
      type_map = FUNC0 (&ipa_obstack);
      FUNC6 (uid_to_addressof_up_map,
			 to_uid, 
			 (splay_tree_value)type_map);
    }
  FUNC2 (type_map, FUNC1 (to_type));
}