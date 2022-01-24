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
struct web_entry {int dummy; } ;
typedef  int /*<<< orphan*/  splay_tree ;
typedef  int /*<<< orphan*/  htab_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DF_DU_CHAIN ; 
 int DF_EQUIV_NOTES ; 
 int DF_HARD_REGS ; 
 int DF_SUBREGS ; 
 int DF_UD_CHAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* def_entry ; 
 int /*<<< orphan*/  defs_num ; 
 int /*<<< orphan*/  df ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  eq_descriptor_pre_extension ; 
 int /*<<< orphan*/  hash_del_pre_extension ; 
 int /*<<< orphan*/  hash_descriptor_pre_extension ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  last_basic_block ; 
 int /*<<< orphan*/  last_bb ; 
 void* see_bb_hash_ar ; 
 void* see_bb_splay_ar ; 
 int /*<<< orphan*/  see_pre_extension_hash ; 
 void* use_entry ; 
 int /*<<< orphan*/  uses_num ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  /* Build the df object. */
  df = FUNC5 (DF_HARD_REGS | DF_EQUIV_NOTES | DF_SUBREGS);
  FUNC6 (df, 0);
  FUNC3 (df, DF_DU_CHAIN | DF_UD_CHAIN);
  FUNC2 (df);

  if (dump_file)
    FUNC4 (df, dump_file);

  /* Record the last basic block at the beginning of the optimization.  */
  last_bb = last_basic_block;
  /* Record the number of uses at the beginning of the optimization.  */
  uses_num = FUNC1 (df);
  /* Record the number of definitions at the beginning of the optimization.  */
  defs_num = FUNC0 (df);

  /*  Allocate web entries array for the union-find data structure.  */
  def_entry = FUNC8 (defs_num, sizeof (struct web_entry));
  use_entry = FUNC8 (uses_num, sizeof (struct web_entry));

  /*  Allocate an array of splay trees.
      One splay tree for each basic block.  */
  see_bb_splay_ar = FUNC8 (last_bb, sizeof (splay_tree));

  /*  Allocate an array of hashes.
      One hash for each basic block.  */
  see_bb_hash_ar = FUNC8 (last_bb, sizeof (htab_t));

  /*  Allocate the extension hash.  It will hold the extensions that we want
      to PRE.  */
  see_pre_extension_hash = FUNC7 (10, 
					hash_descriptor_pre_extension, 
					eq_descriptor_pre_extension,
					hash_del_pre_extension);
}