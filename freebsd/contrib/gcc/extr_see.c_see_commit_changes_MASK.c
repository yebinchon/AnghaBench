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
struct see_pre_extension_expr {int dummy; } ;
typedef  int /*<<< orphan*/ * PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * df ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct see_pre_extension_expr**) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int last_bb ; 
 scalar_t__* see_bb_splay_ar ; 
 int /*<<< orphan*/  see_commit_ref_changes ; 
 int /*<<< orphan*/  see_map_extension ; 
 int /*<<< orphan*/  see_pre_delete_extension ; 
 int /*<<< orphan*/  see_pre_extension_hash ; 
 int FUNC6 (struct see_pre_extension_expr**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct see_pre_extension_expr** FUNC8 (size_t,int) ; 

__attribute__((used)) static void
FUNC9 (void)
{
  struct see_pre_extension_expr **index_map;
  size_t pre_extension_num = FUNC4 (see_pre_extension_hash);
  bool did_insert = false;
  int i;

  index_map = FUNC8 (pre_extension_num,
  		       sizeof (struct see_pre_extension_expr *));

  if (dump_file)
    FUNC2 (dump_file,
      "* Phase 4: Commit changes to the insn stream.  *\n");

  /* Produce a mapping of all the pre_extensions.  */
  FUNC5 (see_pre_extension_hash, see_map_extension, (PTR) index_map);

  /* Delete redundant extension.  This will prevent them from been emitted in
     the first place.  */
  FUNC5 (see_pre_extension_hash, see_pre_delete_extension, NULL);

  /* At this point, we must free the DF object, since the number of basic blocks
     may change.  */
  FUNC1 (df);
  df = NULL;

  /* Insert extensions on edges, according to the LCM result.  */
  did_insert = FUNC6 (index_map);

  if (did_insert)
    FUNC0 ();

  /* Commit the rest of the changes.  */
  for (i = 0; i < last_bb; i++)
    {
      if (see_bb_splay_ar[i])
	{
	  /* Traverse over all the references in the basic block in forward
	     order.  */
	  FUNC7 (see_bb_splay_ar[i],
			      see_commit_ref_changes, NULL);
	}
    }

  FUNC3 (index_map);
}