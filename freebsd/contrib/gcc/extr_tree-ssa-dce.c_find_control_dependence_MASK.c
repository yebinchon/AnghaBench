#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct edge_list {int dummy; } ;
typedef  TYPE_1__* edge ;
typedef  scalar_t__ basic_block ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int EDGE_ABNORMAL ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 scalar_t__ EXIT_BLOCK_PTR ; 
 TYPE_1__* FUNC0 (struct edge_list*,int) ; 
 scalar_t__ FUNC1 (struct edge_list*,int) ; 
 scalar_t__ FUNC2 (struct edge_list*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (struct edge_list *el, int edge_index)
{
  basic_block current_block;
  basic_block ending_block;

  FUNC4 (FUNC1 (el, edge_index) != EXIT_BLOCK_PTR);

  if (FUNC1 (el, edge_index) == ENTRY_BLOCK_PTR)
    ending_block = FUNC6 (ENTRY_BLOCK_PTR);
  else
    ending_block = FUNC3 (FUNC1 (el, edge_index));

  for (current_block = FUNC2 (el, edge_index);
       current_block != ending_block && current_block != EXIT_BLOCK_PTR;
       current_block = FUNC3 (current_block))
    {
      edge e = FUNC0 (el, edge_index);

      /* For abnormal edges, we don't make current_block control
	 dependent because instructions that throw are always necessary
	 anyway.  */
      if (e->flags & EDGE_ABNORMAL)
	continue;

      FUNC5 (current_block, edge_index);
    }
}