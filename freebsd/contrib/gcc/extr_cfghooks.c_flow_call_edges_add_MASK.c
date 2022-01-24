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
typedef  int /*<<< orphan*/  sbitmap ;
struct TYPE_2__ {int (* flow_call_edges_add ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 TYPE_1__* cfg_hooks ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (sbitmap blocks)
{
  if (!cfg_hooks->flow_call_edges_add)
    FUNC0 ("%s does not support flow_call_edges_add",
		    cfg_hooks->name);

  return (cfg_hooks->flow_call_edges_add) (blocks);
}