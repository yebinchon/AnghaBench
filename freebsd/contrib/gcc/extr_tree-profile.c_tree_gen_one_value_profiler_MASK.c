#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_2__* histogram_value ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_5__ {int /*<<< orphan*/  stmt; } ;
struct TYPE_6__ {TYPE_1__ hvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  tree_one_value_profiler_fn ; 

__attribute__((used)) static void
FUNC8 (histogram_value value, unsigned tag, unsigned base)
{
  tree stmt = value->hvalue.stmt;
  block_stmt_iterator bsi = FUNC0 (stmt);
  tree ref = FUNC7 (tag, base), ref_ptr;
  tree args, call, val;
  
  ref_ptr = FUNC4 (&bsi,
				      FUNC2 (ref, current_function_decl),
				      true, NULL_TREE);
  val = FUNC5 (&bsi, value);
  args = FUNC6 (NULL_TREE, ref_ptr,
		    FUNC6 (NULL_TREE, val,
			       NULL_TREE));
  call = FUNC3 (tree_one_value_profiler_fn, args);
  FUNC1 (&bsi, call, BSI_SAME_STMT);
}