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
struct dom_walk_data {int /*<<< orphan*/  block_data_stack; int /*<<< orphan*/  free_block_data; scalar_t__ initialize_block_local_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heap ; 
 int /*<<< orphan*/  void_p ; 

void
FUNC4 (struct dom_walk_data *walk_data)
{
  if (walk_data->initialize_block_local_data)
    {
      while (FUNC1 (void_p, walk_data->free_block_data) > 0)
	FUNC3 (FUNC2 (void_p, walk_data->free_block_data));
    }

  FUNC0 (void_p, heap, walk_data->free_block_data);
  FUNC0 (void_p, heap, walk_data->block_data_stack);
}