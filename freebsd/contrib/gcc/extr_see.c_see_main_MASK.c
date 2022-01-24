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
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int last_bb ; 
 scalar_t__* see_bb_hash_ar ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ see_pre_extension_hash ; 
 int /*<<< orphan*/  see_print_pre_extension_expr ; 
 int /*<<< orphan*/  see_print_register_properties ; 
 int FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (void)
{
  bool cont = false;
  int i = 0;

  /* Initialize global data structures.  */
  FUNC6 ();

  /* Phase 1: Propagate extensions to uses.  */
  cont = FUNC8 ();

  if (cont)
    {
      FUNC2 ();

      /* Phase 2: Merge and eliminate locally redundant extensions.  */
      FUNC7 ();

      /* Phase 3: Eliminate globally redundant extensions.  */
      FUNC4 ();

      /* Phase 4: Commit changes to the insn stream.  */
      FUNC3 ();

      if (dump_file)
	{
	  /* For debug purpose only.  */
	  FUNC0 (dump_file, "see_pre_extension_hash:\n");
	  FUNC1 (see_pre_extension_hash, see_print_pre_extension_expr,
      			 NULL);

	  for (i = 0; i < last_bb; i++)
	    {
 	      if (see_bb_hash_ar[i])
		/* Traverse over all the references in the basic block in
		   forward order.  */
		{
		  FUNC0 (dump_file,
			   "Searching register properties in bb %d\n", i);
		  FUNC1 (see_bb_hash_ar[i],
		  		 see_print_register_properties, NULL);
		}
	    }
	}
    }

  /* Free global data structures.  */
  FUNC5 ();
}