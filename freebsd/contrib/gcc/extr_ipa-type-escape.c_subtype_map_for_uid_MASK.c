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
typedef  int /*<<< orphan*/  splay_tree_value ;
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  int /*<<< orphan*/ * bitmap ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ipa_obstack ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uid_to_subtype_map ; 

__attribute__((used)) static bitmap
FUNC3 (int uid, bool create)
{
  splay_tree_node result = FUNC2 (uid_to_subtype_map, 
			      (splay_tree_key) uid);
  
  if (result) 
    return (bitmap) result->value;  
  else if (create)
    {
      bitmap subtype_map = FUNC0 (&ipa_obstack);
      FUNC1 (uid_to_subtype_map,
			 uid, 
			 (splay_tree_value)subtype_map);
      return subtype_map;
    }
  else return NULL;
}