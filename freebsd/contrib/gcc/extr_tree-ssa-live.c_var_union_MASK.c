#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_map ;
typedef  scalar_t__ tree ;
struct TYPE_5__ {int* compact_to_partition; int* partition_to_compact; int /*<<< orphan*/  var_partition; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int NO_PARTITION ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 

int
FUNC9 (var_map map, tree var1, tree var2)
{
  int p1, p2, p3;
  tree root_var = NULL_TREE;
  tree other_var = NULL_TREE;

  /* This is independent of partition_to_compact. If partition_to_compact is 
     on, then whichever one of these partitions is absorbed will never have a
     dereference into the partition_to_compact array any more.  */

  if (FUNC3 (var1) == SSA_NAME)
    p1 = FUNC6 (map->var_partition, FUNC2 (var1));
  else
    {
      p1 = FUNC8 (map, var1);
      if (map->compact_to_partition)
        p1 = map->compact_to_partition[p1];
      root_var = var1;
    }
  
  if (FUNC3 (var2) == SSA_NAME)
    p2 = FUNC6 (map->var_partition, FUNC2 (var2));
  else
    {
      p2 = FUNC8 (map, var2);
      if (map->compact_to_partition)
        p2 = map->compact_to_partition[p2];

      /* If there is no root_var set, or it's not a user variable, set the
	 root_var to this one.  */
      if (!root_var || (FUNC1 (root_var) && FUNC0 (root_var)))
        {
	  other_var = root_var;
	  root_var = var2;
	}
      else 
	other_var = var2;
    }

  FUNC5 (p1 != NO_PARTITION);
  FUNC5 (p2 != NO_PARTITION);

  if (p1 == p2)
    p3 = p1;
  else
    p3 = FUNC7 (map->var_partition, p1, p2);

  if (map->partition_to_compact)
    p3 = map->partition_to_compact[p3];

  if (root_var)
    FUNC4 (map, root_var, p3);
  if (other_var)
    FUNC4 (map, other_var, p3);

  return p3;
}