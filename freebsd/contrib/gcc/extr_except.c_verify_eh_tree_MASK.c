#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct function {TYPE_1__* eh; } ;
struct eh_region {int region_number; struct eh_region* next_peer; struct eh_region* outer; struct eh_region* inner; scalar_t__ may_contain_throw; } ;
struct TYPE_6__ {TYPE_2__* eh; } ;
struct TYPE_5__ {int /*<<< orphan*/  region_array; } ;
struct TYPE_4__ {int last_region_number; struct eh_region* region_tree; } ;

/* Variables and functions */
 struct eh_region* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* cfun ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct function*) ; 
 int /*<<< orphan*/  eh_region ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC4 (struct function *fun)
{
  struct eh_region *i, *outer = NULL;
  bool err = false;
  int nvisited = 0;
  int count = 0;
  int j;
  int depth = 0;

  i = fun->eh->region_tree;
  if (! i)
    return;
  for (j = fun->eh->last_region_number; j > 0; --j)
    if ((i = FUNC0 (eh_region, cfun->eh->region_array, j)))
      {
	count++;
	if (i->region_number != j)
	  {
	    FUNC2 ("region_array is corrupted for region %i", i->region_number);
	    err = true;
	  }
      }

  while (1)
    {
      if (FUNC0 (eh_region, cfun->eh->region_array, i->region_number) != i)
	{
	  FUNC2 ("region_array is corrupted for region %i", i->region_number);
	  err = true;
	}
      if (i->outer != outer)
	{
	  FUNC2 ("outer block of region %i is wrong", i->region_number);
	  err = true;
	}
      if (i->may_contain_throw && outer && !outer->may_contain_throw)
	{
	  FUNC2 ("region %i may contain throw and is contained in region that may not",
		 i->region_number);
	  err = true;
	}
      if (depth < 0)
	{
	  FUNC2 ("negative nesting depth of region %i", i->region_number);
	  err = true;
	}
      nvisited ++;
      /* If there are sub-regions, process them.  */
      if (i->inner)
	outer = i, i = i->inner, depth++;
      /* If there are peers, process them.  */
      else if (i->next_peer)
	i = i->next_peer;
      /* Otherwise, step back up the tree to the next peer.  */
      else
	{
	  do {
	    i = i->outer;
	    depth--;
	    if (i == NULL)
	      {
		if (depth != -1)
		  {
		    FUNC2 ("tree list ends on depth %i", depth + 1);
		    err = true;
		  }
		if (count != nvisited)
		  {
		    FUNC2 ("array does not match the region tree");
		    err = true;
		  }
		if (err)
		  {
		    FUNC1 (stderr, fun);
		    FUNC3 ("verify_eh_tree failed");
		  }
	        return;
	      }
	    outer = i->outer;
	  } while (i->next_peer == NULL);
	  i = i->next_peer;
	}
    }
}