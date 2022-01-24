#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* tree ;
struct nb_iter_bound {struct nb_iter_bound* next; void* at_stmt; void* bound; } ;
struct loop {int num; struct nb_iter_bound* bounds; } ;
typedef  int /*<<< orphan*/  double_int ;

/* Variables and functions */
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nb_iter_bound* FUNC6 (int) ; 

void
FUNC7 (struct loop *loop, tree bound, tree additional, tree at_stmt)
{
  struct nb_iter_bound *elt = FUNC6 (sizeof (struct nb_iter_bound));
  double_int i_bound = FUNC1 (bound, additional);
  tree c_bound = FUNC2 (FUNC5 (FUNC0 (bound)),
				     i_bound);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC3 (dump_file, "Statements after ");
      FUNC4 (dump_file, at_stmt, TDF_SLIM);
      FUNC3 (dump_file, " are executed at most ");
      FUNC4 (dump_file, bound, TDF_SLIM);
      FUNC3 (dump_file, " (bounded by ");
      FUNC4 (dump_file, c_bound, TDF_SLIM);
      FUNC3 (dump_file, ") times in loop %d.\n", loop->num);
    }

  elt->bound = c_bound;
  elt->at_stmt = at_stmt;
  elt->next = loop->bounds;
  loop->bounds = elt;
}