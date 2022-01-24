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
typedef  TYPE_1__* value_set_t ;
typedef  TYPE_2__* value_set_node_t ;
struct TYPE_5__ {struct TYPE_5__* next; int /*<<< orphan*/  expr; } ;
struct TYPE_4__ {TYPE_2__* head; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (FILE *outfile, value_set_t set,
		 const char *setname, int blockindex)
{
  value_set_node_t node;
  FUNC0 (outfile, "%s[%d] := { ", setname, blockindex);
  if (set)
    {
      for (node = set->head;
	   node;
	   node = node->next)
	{
	  FUNC2 (outfile, node->expr, 0);

	  FUNC0 (outfile, " (");
	  FUNC2 (outfile, FUNC1 (node->expr), 0);
	  FUNC0 (outfile, ") ");

	  if (node->next)
	    FUNC0 (outfile, ", ");
	}
    }

  FUNC0 (outfile, " }\n");
}