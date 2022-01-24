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
typedef  TYPE_1__* var_map ;
typedef  int /*<<< orphan*/  tree ;
struct _var_map {int dummy; } ;
struct TYPE_3__ {int num_partitions; int partition_size; int /*<<< orphan*/ * ref_count; int /*<<< orphan*/ * compact_to_partition; int /*<<< orphan*/ * partition_to_compact; int /*<<< orphan*/ * partition_to_var; int /*<<< orphan*/  var_partition; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

var_map
FUNC3 (int size)
{
  var_map map;

  map = (var_map) FUNC2 (sizeof (struct _var_map));
  map->var_partition = FUNC1 (size);
  map->partition_to_var 
	      = (tree *)FUNC2 (size * sizeof (tree));
  FUNC0 (map->partition_to_var, 0, size * sizeof (tree));

  map->partition_to_compact = NULL;
  map->compact_to_partition = NULL;
  map->num_partitions = size;
  map->partition_size = size;
  map->ref_count = NULL;
  return map;
}