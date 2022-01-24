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
struct tree_type {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash_types; } ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__ lang_hooks ; 
 scalar_t__ t_kind ; 
 int /*<<< orphan*/ * tree_node_counts ; 
 int* tree_node_sizes ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned int,scalar_t__) ; 

tree
FUNC4 (unsigned int hashcode, tree type)
{
  tree t1;

  /* The hash table only contains main variants, so ensure that's what we're
     being passed.  */
  FUNC1 (FUNC0 (type) == type);

  if (!lang_hooks.types.hash_types)
    return type;

  /* See if the type is in the hash table already.  If so, return it.
     Otherwise, add the type.  */
  t1 = FUNC3 (hashcode, type);
  if (t1 != 0)
    {
#ifdef GATHER_STATISTICS
      tree_node_counts[(int) t_kind]--;
      tree_node_sizes[(int) t_kind] -= sizeof (struct tree_type);
#endif
      return t1;
    }
  else
    {
      FUNC2 (hashcode, type);
      return type;
    }
}