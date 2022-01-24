#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* partition_pair_p ;
typedef  TYPE_2__* coalesce_list_p ;
struct TYPE_5__ {int /*<<< orphan*/  map; TYPE_1__** list; scalar_t__ add_mode; } ;
struct TYPE_4__ {int second_partition; int cost; int first_partition; struct TYPE_4__* next; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC4 (FILE *f, coalesce_list_p cl)
{
  partition_pair_p node;
  int x, num;
  tree var;

  if (cl->add_mode)
    {
      FUNC0 (f, "Coalesce List:\n");
      num = FUNC1 (cl->map);
      for (x = 0; x < num; x++)
        {
	  node = cl->list[x];
	  if (node)
	    {
	      FUNC0 (f, "[");
	      FUNC3 (f, FUNC2 (cl->map, x), TDF_SLIM);
	      FUNC0 (f, "] - ");
	      for ( ; node; node = node->next)
	        {
		  var = FUNC2 (cl->map, node->second_partition);
		  FUNC3 (f, var, TDF_SLIM);
		  FUNC0 (f, "(%1d), ", node->cost);
		}
	      FUNC0 (f, "\n");
	    }
	}
    }
  else
    {
      FUNC0 (f, "Sorted Coalesce list:\n");
      for (node = cl->list[0]; node; node = node->next)
        {
	  FUNC0 (f, "(%d) ", node->cost);
	  var = FUNC2 (cl->map, node->first_partition);
	  FUNC3 (f, var, TDF_SLIM);
	  FUNC0 (f, " : ");
	  var = FUNC2 (cl->map, node->second_partition);
	  FUNC3 (f, var, TDF_SLIM);
	  FUNC0 (f, "\n");
	}
    }
}