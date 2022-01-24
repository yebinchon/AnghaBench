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
 int /*<<< orphan*/  FUNC0 () ; 
 void* ae_kill ; 
 void* antloc ; 
 void* comp ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  edge_list ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int last_bb ; 
 int /*<<< orphan*/  pre_delete_map ; 
 int /*<<< orphan*/  FUNC3 (size_t,void*,void*,void*,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pre_insert_map ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int) ; 
 int /*<<< orphan*/  see_analyze_ref_local_prop ; 
 scalar_t__* see_bb_splay_ar ; 
 int /*<<< orphan*/  see_pre_extension_hash ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* transp ; 

__attribute__((used)) static void
FUNC9 (void)
{
  size_t pre_extension_num = FUNC2 (see_pre_extension_hash);
  int i = 0;

  if (dump_file)
    FUNC1 (dump_file,
      "* Phase 3: Eliminate globally redundant extensions.  *\n");

  /* Initialize the global sbitmap vectors.  */
  transp = FUNC5 (last_bb, pre_extension_num);
  comp = FUNC5 (last_bb, pre_extension_num);
  antloc = FUNC5 (last_bb, pre_extension_num);
  ae_kill = FUNC5 (last_bb, pre_extension_num);
  FUNC6 (transp, last_bb);
  FUNC7 (comp, last_bb);
  FUNC7 (antloc, last_bb);
  FUNC7 (ae_kill, last_bb);

  /* Traverse over all the splay trees of the basic blocks.  */
  for (i = 0; i < last_bb; i++)
    {
      if (see_bb_splay_ar[i])
	{
	  /* Traverse over all the references in the basic block in forward
	     order.  */
	  FUNC8 (see_bb_splay_ar[i],
			      see_analyze_ref_local_prop, NULL);
	}
    }

  /* Add fake exit edges before running the lcm.  */
  FUNC0 ();

  /* Run the LCM.  */
  edge_list = FUNC3 (pre_extension_num, transp, comp, antloc,
  			    ae_kill, &pre_insert_map, &pre_delete_map);

  /* Remove the fake edges.  */
  FUNC4 ();
}