#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_map ;
typedef  TYPE_2__* var_ann_t ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {scalar_t__ out_of_ssa_tag; } ;
struct TYPE_6__ {int* partition_to_compact; int /*<<< orphan*/  var_partition; } ;

/* Variables and functions */
 int NO_PARTITION ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5 (var_map map, tree var)
{
  var_ann_t ann;
  int part;

  if (FUNC1 (var) == SSA_NAME)
    {
      part = FUNC3 (map->var_partition, FUNC0 (var));
      if (map->partition_to_compact)
	part = map->partition_to_compact[part];
    }
  else
    {
      ann = FUNC4 (var);
      if (ann->out_of_ssa_tag)
	part = FUNC2 (ann);
      else
        part = NO_PARTITION;
    }
  return part;
}