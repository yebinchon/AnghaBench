#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* edge ;
typedef  scalar_t__ basic_block ;
struct TYPE_6__ {scalar_t__ dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static basic_block
FUNC7 (basic_block first_head,
			   basic_block second_head,
			   edge e,
			   void *cond_expr)
{
  basic_block new_head = NULL;
  edge e1;

  FUNC0 (e->dest == second_head);

  /* Split edge 'e'. This will create a new basic block, where we can
     insert conditional expr.  */
  new_head = FUNC6 (e);


  FUNC2 (first_head, second_head, new_head,
			  cond_expr);

  /* Don't set EDGE_TRUE_VALUE in RTL mode, as it's invalid there.  */
  e1 = FUNC4 (new_head, first_head, FUNC1 () ? EDGE_TRUE_VALUE : 0);
  FUNC5 (CDI_DOMINATORS, first_head, new_head);
  FUNC5 (CDI_DOMINATORS, second_head, new_head);

  /* Adjust loop header phi nodes.  */
  FUNC3 (first_head, second_head, new_head, e1);

  return new_head;
}