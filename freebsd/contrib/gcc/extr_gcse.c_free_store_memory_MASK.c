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

/* Variables and functions */
 int /*<<< orphan*/ * ae_gen ; 
 int /*<<< orphan*/ * ae_kill ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * pre_delete_map ; 
 int /*<<< orphan*/ * pre_insert_map ; 
 int /*<<< orphan*/ * reg_set_in_block ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * st_antloc ; 
 int /*<<< orphan*/ * transp ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC0 ();

  if (ae_gen)
    FUNC1 (ae_gen);
  if (ae_kill)
    FUNC1 (ae_kill);
  if (transp)
    FUNC1 (transp);
  if (st_antloc)
    FUNC1 (st_antloc);
  if (pre_insert_map)
    FUNC1 (pre_insert_map);
  if (pre_delete_map)
    FUNC1 (pre_delete_map);
  if (reg_set_in_block)
    FUNC1 (reg_set_in_block);

  ae_gen = ae_kill = transp = st_antloc = NULL;
  pre_insert_map = pre_delete_map = reg_set_in_block = NULL;
}