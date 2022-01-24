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
typedef  TYPE_2__* variable ;
typedef  TYPE_2__* location_chain ;
struct TYPE_6__ {scalar_t__ refcount; int n_var_parts; TYPE_1__* var_part; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* loc_chain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  loc_chain_pool ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  var_pool ; 

__attribute__((used)) static void
FUNC2 (void *elem)
{
  int i;
  variable var = (variable) elem;
  location_chain node, next;

  FUNC0 (var->refcount > 0);

  var->refcount--;
  if (var->refcount > 0)
    return;

  for (i = 0; i < var->n_var_parts; i++)
    {
      for (node = var->var_part[i].loc_chain; node; node = next)
	{
	  next = node->next;
	  FUNC1 (loc_chain_pool, node);
	}
      var->var_part[i].loc_chain = NULL;
    }
  FUNC1 (var_pool, var);
}