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
struct mem_ref {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef  int /*<<< orphan*/  htab_t ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  bitmap ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_ref**) ; 
 int /*<<< orphan*/ * FUNC6 (struct loop*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  memref_eq ; 
 int /*<<< orphan*/  memref_hash ; 

__attribute__((used)) static struct mem_ref *
FUNC9 (struct loop *loop, bitmap clobbered_vops)
{
  basic_block *body = FUNC6 (loop);
  block_stmt_iterator bsi;
  unsigned i;
  struct mem_ref *mem_ref_list = NULL;
  htab_t mem_refs = FUNC7 (100, memref_hash, memref_eq, NULL);

  for (i = 0; i < loop->num_nodes; i++)
    {
      for (bsi = FUNC2 (body[i]); !FUNC0 (bsi); FUNC1 (&bsi))
	FUNC5 (loop, mem_refs, clobbered_vops, FUNC3 (bsi),
			      &mem_ref_list);
    }

  FUNC4 (body);

  FUNC8 (mem_refs);
  return mem_ref_list;
}