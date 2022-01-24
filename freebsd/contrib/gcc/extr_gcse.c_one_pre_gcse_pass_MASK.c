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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int bytes_used ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 () ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  edge_list ; 
 TYPE_1__ expr_hash_table ; 
 scalar_t__ flag_gcse_lm ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int gcse_create_count ; 
 int gcse_subst_count ; 
 int /*<<< orphan*/  last_basic_block ; 
 int /*<<< orphan*/  max_cuid ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static int
FUNC16 (int pass)
{
  int changed = 0;

  gcse_subst_count = 0;
  gcse_create_count = 0;

  FUNC1 (max_cuid, &expr_hash_table, 0);
  FUNC0 ();
  if (flag_gcse_lm)
    FUNC4 ();

  FUNC3 (&expr_hash_table);
  FUNC15 ();
  if (dump_file)
    FUNC7 (dump_file, "Expression", &expr_hash_table);

  if (expr_hash_table.n_elems > 0)
    {
      FUNC2 (last_basic_block, expr_hash_table.n_elems);
      FUNC5 ();
      changed |= FUNC13 ();
      FUNC9 (edge_list);
      FUNC12 ();
    }

  FUNC11 ();
  FUNC14 ();
  FUNC10 (&expr_hash_table);

  if (dump_file)
    {
      FUNC8 (dump_file, "\nPRE GCSE of %s, pass %d: %d bytes needed, ",
	       FUNC6 (), pass, bytes_used);
      FUNC8 (dump_file, "%d substs, %d insns created\n",
	       gcse_subst_count, gcse_create_count);
    }

  return changed;
}