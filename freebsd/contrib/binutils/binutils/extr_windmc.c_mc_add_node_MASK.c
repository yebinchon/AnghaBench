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
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ mc_node ;

/* Variables and functions */
 TYPE_1__* mc_nodes ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (int) ; 

mc_node *
FUNC2 (void)
{
  mc_node *ret;

  ret = FUNC1 (sizeof (mc_node));
  FUNC0 (ret, 0, sizeof (mc_node));
  if (! mc_nodes)
    mc_nodes = ret;
  else
    {
      mc_node *h = mc_nodes;

      while (h->next != NULL)
	h = h->next;
      h->next = ret;
    }
  return ret;
}