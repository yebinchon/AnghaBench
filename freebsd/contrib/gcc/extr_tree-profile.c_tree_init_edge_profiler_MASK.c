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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ gcov_type_node ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  integer_type_node ; 
 void* tree_interval_profiler_fn ; 
 void* tree_one_value_profiler_fn ; 
 void* tree_pow2_profiler_fn ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC4 (void)
{
  tree interval_profiler_fn_type;
  tree pow2_profiler_fn_type;
  tree one_value_profiler_fn_type;
  tree gcov_type_ptr;

  if (!gcov_type_node)
    {
      gcov_type_node = FUNC3 ();
      gcov_type_ptr = FUNC2 (gcov_type_node);

      /* void (*) (gcov_type *, gcov_type, int, unsigned)  */
      interval_profiler_fn_type
	      = FUNC1 (void_type_node,
					  gcov_type_ptr, gcov_type_node,
					  integer_type_node,
					  unsigned_type_node, NULL_TREE);
      tree_interval_profiler_fn
	      = FUNC0 ("__gcov_interval_profiler",
				     interval_profiler_fn_type);

      /* void (*) (gcov_type *, gcov_type)  */
      pow2_profiler_fn_type
	      = FUNC1 (void_type_node,
					  gcov_type_ptr, gcov_type_node,
					  NULL_TREE);
      tree_pow2_profiler_fn = FUNC0 ("__gcov_pow2_profiler",
						   pow2_profiler_fn_type);

      /* void (*) (gcov_type *, gcov_type)  */
      one_value_profiler_fn_type
	      = FUNC1 (void_type_node,
					  gcov_type_ptr, gcov_type_node,
					  NULL_TREE);
      tree_one_value_profiler_fn
	      = FUNC0 ("__gcov_one_value_profiler",
				     one_value_profiler_fn_type);
    }
}