#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;
struct dcast_data_s {scalar_t__ offset; int /*<<< orphan*/  repeated_base; scalar_t__ virt_depth; scalar_t__ subtype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  dfs_dcast_hint_post ; 
 int /*<<< orphan*/  dfs_dcast_hint_pre ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dcast_data_s*) ; 
 scalar_t__ FUNC3 (int) ; 

tree
FUNC4 (tree subtype, tree target)
{
  struct dcast_data_s data;

  data.subtype = subtype;
  data.virt_depth = 0;
  data.offset = NULL_TREE;
  data.repeated_base = FUNC0 (target);

  FUNC2 (FUNC1 (target), /*friends=*/false,
			    dfs_dcast_hint_pre, dfs_dcast_hint_post, &data);
  return data.offset ? data.offset : FUNC3 (-2);
}