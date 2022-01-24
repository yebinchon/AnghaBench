#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_4__* histogram_value ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_8__ {int /*<<< orphan*/  steps; int /*<<< orphan*/  int_start; } ;
struct TYPE_9__ {TYPE_2__ intvl; } ;
struct TYPE_7__ {int /*<<< orphan*/  stmt; } ;
struct TYPE_10__ {TYPE_3__ hdata; TYPE_1__ hvalue; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  tree_interval_profiler_fn ; 
 int /*<<< orphan*/  unsigned_type_node ; 

__attribute__((used)) static void
FUNC9 (histogram_value value, unsigned tag, unsigned base)
{
  tree stmt = value->hvalue.stmt;
  block_stmt_iterator bsi = FUNC0 (stmt);
  tree ref = FUNC8 (tag, base), ref_ptr;
  tree args, call, val;
  tree start = FUNC4 (integer_type_node, value->hdata.intvl.int_start);
  tree steps = FUNC4 (unsigned_type_node, value->hdata.intvl.steps);
  
  ref_ptr = FUNC5 (&bsi,
				      FUNC2 (ref, current_function_decl),
				      true, NULL_TREE);
  val = FUNC6 (&bsi, value);
  args = FUNC7 (NULL_TREE, ref_ptr,
		    FUNC7 (NULL_TREE, val,
			       FUNC7 (NULL_TREE, start,
					  FUNC7 (NULL_TREE, steps,
						     NULL_TREE))));
  call = FUNC3 (tree_interval_profiler_fn, args);
  FUNC1 (&bsi, call, BSI_SAME_STMT);
}