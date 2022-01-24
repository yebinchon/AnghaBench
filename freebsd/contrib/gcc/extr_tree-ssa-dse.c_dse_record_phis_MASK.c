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
struct dse_global_data {int /*<<< orphan*/  stores; } ;
struct dse_block_local_data {int /*<<< orphan*/  stores; } ;
struct dom_walk_data {struct dse_global_data* global_data; int /*<<< orphan*/  block_data_stack; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dse_block_local_data* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_p ; 

__attribute__((used)) static void
FUNC7 (struct dom_walk_data *walk_data, basic_block bb)
{
  struct dse_block_local_data *bd
    = FUNC2 (void_p, walk_data->block_data_stack);
  struct dse_global_data *dse_gd = walk_data->global_data;
  tree phi;

  for (phi = FUNC5 (bb); phi; phi = FUNC0 (phi))
    if (!FUNC4 (FUNC1 (phi)))
      FUNC6 (dse_gd->stores,
			   &bd->stores,
			   FUNC3 (phi));
}