#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_4__* assert_locus_t ;
struct TYPE_11__ {TYPE_3__* dest; TYPE_2__* src; } ;
struct TYPE_10__ {struct TYPE_10__* next; int /*<<< orphan*/  val; scalar_t__ comp_code; TYPE_5__* e; TYPE_1__* bb; int /*<<< orphan*/  si; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {int index; } ;
struct TYPE_7__ {int index; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__** asserts_for ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char** tree_code_name ; 

void
FUNC5 (FILE *file, tree name)
{
  assert_locus_t loc;

  FUNC3 (file, "Assertions to be inserted for ");
  FUNC4 (file, name, 0);
  FUNC3 (file, "\n");

  loc = asserts_for[FUNC0 (name)];
  while (loc)
    {
      FUNC3 (file, "\t");
      FUNC4 (file, FUNC1 (loc->si), 0);
      FUNC3 (file, "\n\tBB #%d", loc->bb->index);
      if (loc->e)
	{
	  FUNC3 (file, "\n\tEDGE %d->%d", loc->e->src->index,
	           loc->e->dest->index);
	  FUNC2 (file, loc->e, 0);
	}
      FUNC3 (file, "\n\tPREDICATE: ");
      FUNC4 (file, name, 0);
      FUNC3 (file, " %s ", tree_code_name[(int)loc->comp_code]);
      FUNC4 (file, loc->val, 0);
      FUNC3 (file, "\n\n");
      loc = loc->next;
    }

  FUNC3 (file, "\n");
}