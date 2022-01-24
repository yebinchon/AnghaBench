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
typedef  int /*<<< orphan*/  tree ;
struct mem_ref {unsigned int prefetch_mod; scalar_t__ write_p; TYPE_1__* group; int /*<<< orphan*/  mem; int /*<<< orphan*/  stmt; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_2__ {unsigned int step; } ;
typedef  unsigned int HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 size_t BUILT_IN_PREFETCH ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * built_in_decls ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,void*) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct mem_ref *ref, unsigned unroll_factor, unsigned ahead)
{
  HOST_WIDE_INT delta;
  tree addr, addr_base, prefetch, params, write_p;
  block_stmt_iterator bsi;
  unsigned n_prefetches, ap;

  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC7 (dump_file, "Issued prefetch for %p.\n", (void *) ref);

  bsi = FUNC0 (ref->stmt);

  n_prefetches = ((unroll_factor + ref->prefetch_mod - 1)
		  / ref->prefetch_mod);
  addr_base = FUNC2 (ref->mem, ptr_type_node);
  addr_base = FUNC6 (&bsi, FUNC9 (addr_base), true, NULL);

  for (ap = 0; ap < n_prefetches; ap++)
    {
      /* Determine the address to prefetch.  */
      delta = (ahead + ap * ref->prefetch_mod) * ref->group->step;
      addr = FUNC5 (PLUS_EXPR, ptr_type_node,
			  addr_base, FUNC4 (ptr_type_node, delta));
      addr = FUNC6 (&bsi, FUNC9 (addr), true, NULL);

      /* Create the prefetch instruction.  */
      write_p = ref->write_p ? integer_one_node : integer_zero_node;
      params = FUNC8 (NULL_TREE, addr,
			  FUNC8 (NULL_TREE, write_p, NULL_TREE));
				 
      prefetch = FUNC3 (built_in_decls[BUILT_IN_PREFETCH],
					   params);
      FUNC1 (&bsi, prefetch, BSI_SAME_STMT);
    }
}