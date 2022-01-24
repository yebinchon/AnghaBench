#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* (* decl_printable_name ) (int /*<<< orphan*/ ,int) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int TDF_BLOCKS ; 
 int TDF_DETAILS ; 
 int TDF_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 TYPE_1__ lang_hooks ; 
 int last_basic_block ; 
 int n_basic_blocks ; 
 int n_edges ; 
 char* FUNC5 (int /*<<< orphan*/ ,int) ; 

void
FUNC6 (FILE *file, int flags)
{
  if (flags & TDF_DETAILS)
    {
      const char *funcname
	= lang_hooks.decl_printable_name (current_function_decl, 2);

      FUNC4 ('\n', file);
      FUNC3 (file, ";; Function %s\n\n", funcname);
      FUNC3 (file, ";; \n%d basic blocks, %d edges, last basic block %d.\n\n",
	       n_basic_blocks, n_edges, last_basic_block);

      FUNC0 (file);
      FUNC3 (file, "\n");
    }

  if (flags & TDF_STATS)
    FUNC1 (file);

  FUNC2 (current_function_decl, file, flags | TDF_BLOCKS);
}