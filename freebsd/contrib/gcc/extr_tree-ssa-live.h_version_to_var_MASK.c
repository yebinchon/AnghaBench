#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* var_map ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int* partition_to_compact; int /*<<< orphan*/  var_partition; } ;

/* Variables and functions */
 int NO_PARTITION ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static inline tree FUNC2 (var_map map, int version)
{
  int part;
  part = FUNC0 (map->var_partition, version);
  if (map->partition_to_compact)
    part = map->partition_to_compact[part];
  if (part == NO_PARTITION)
    return NULL_TREE;
  
  return FUNC1 (map, part);
}