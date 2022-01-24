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
struct dom_info {int /*<<< orphan*/  fake_exit_edge; int /*<<< orphan*/  dfs_to_bb; int /*<<< orphan*/  dfs_order; int /*<<< orphan*/  set_child; int /*<<< orphan*/  set_size; int /*<<< orphan*/  set_chain; int /*<<< orphan*/  next_bucket; int /*<<< orphan*/  bucket; int /*<<< orphan*/  dom; int /*<<< orphan*/  key; int /*<<< orphan*/  path_min; int /*<<< orphan*/  dfs_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct dom_info *di)
{
  FUNC1 (di->dfs_parent);
  FUNC1 (di->path_min);
  FUNC1 (di->key);
  FUNC1 (di->dom);
  FUNC1 (di->bucket);
  FUNC1 (di->next_bucket);
  FUNC1 (di->set_chain);
  FUNC1 (di->set_size);
  FUNC1 (di->set_child);
  FUNC1 (di->dfs_order);
  FUNC1 (di->dfs_to_bb);
  FUNC0 (di->fake_exit_edge);
}