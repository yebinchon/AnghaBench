#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ n_elems; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int FUNC3 () ; 
 int bytes_used ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int global_const_prop_count ; 
 int global_copy_prop_count ; 
 int /*<<< orphan*/ * implicit_sets ; 
 int /*<<< orphan*/  last_basic_block ; 
 int local_const_prop_count ; 
 int local_copy_prop_count ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  max_cuid ; 
 int /*<<< orphan*/  rtx ; 
 TYPE_1__ set_hash_table ; 

__attribute__((used)) static int
FUNC16 (int pass, bool cprop_jumps, bool bypass_jumps)
{
  int changed = 0;

  global_const_prop_count = local_const_prop_count = 0;
  global_copy_prop_count = local_copy_prop_count = 0;

  FUNC15 (cprop_jumps);

  /* Determine implicit sets.  */
  implicit_sets = FUNC0 (rtx, last_basic_block);
  FUNC10 ();

  FUNC2 (max_cuid, &set_hash_table, 1);
  FUNC5 (&set_hash_table);

  /* Free implicit_sets before peak usage.  */
  FUNC12 (implicit_sets);
  implicit_sets = NULL;

  if (dump_file)
    FUNC9 (dump_file, "SET", &set_hash_table);
  if (set_hash_table.n_elems > 0)
    {
      FUNC1 (last_basic_block, set_hash_table.n_elems);
      FUNC4 ();
      changed = FUNC6 (cprop_jumps);
      if (bypass_jumps)
	changed |= FUNC3 ();
      FUNC13 ();
    }

  FUNC14 (&set_hash_table);

  if (dump_file)
    {
      FUNC11 (dump_file, "CPROP of %s, pass %d: %d bytes needed, ",
	       FUNC7 (), pass, bytes_used);
      FUNC11 (dump_file, "%d local const props, %d local copy props, ",
	       local_const_prop_count, local_copy_prop_count);
      FUNC11 (dump_file, "%d global const props, %d global copy props\n\n",
	       global_const_prop_count, global_copy_prop_count);
    }
  /* Global analysis may get into infinite loops for unreachable blocks.  */
  if (changed && cprop_jumps)
    FUNC8 ();

  return changed;
}