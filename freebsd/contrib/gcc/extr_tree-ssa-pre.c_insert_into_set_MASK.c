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
typedef  TYPE_1__* value_set_t ;
typedef  TYPE_2__* value_set_node_t ;
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {struct TYPE_6__* next; int /*<<< orphan*/  expr; } ;
struct TYPE_5__ {TYPE_2__* tail; TYPE_2__* head; int /*<<< orphan*/  length; scalar_t__ indexed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  value_set_node_pool ; 

__attribute__((used)) static void
FUNC5 (value_set_t set, tree expr)
{
  value_set_node_t newnode = (value_set_node_t) FUNC3 (value_set_node_pool);
  tree val = FUNC1 (expr);
  FUNC0 (val);

  if (FUNC2 (val))
    return;

  /* For indexed sets, insert the value into the set value bitmap.
     For all sets, add it to the linked list and increment the list
     length.  */
  if (set->indexed)
    FUNC4 (set, val);

  newnode->next = NULL;
  newnode->expr = expr;
  set->length ++;
  if (set->head == NULL)
    {
      set->head = set->tail = newnode;
    }
  else
    {
      set->tail->next = newnode;
      set->tail = newnode;
    }
}