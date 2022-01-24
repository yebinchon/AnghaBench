#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* value_set_t ;
typedef  TYPE_2__* value_set_node_t ;
typedef  int /*<<< orphan*/  bitmap_set_t ;
struct TYPE_8__ {int /*<<< orphan*/  expr; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static value_set_t
FUNC3 (value_set_t a, bitmap_set_t b,
				    bool indexed)
{
  value_set_t ret = FUNC2 (indexed);
  value_set_node_t node;
  for (node = a->head;
       node;
       node = node->next)
    {
      if (!FUNC0 (b, node->expr))
	FUNC1 (ret, node->expr);
    }
  return ret;
}