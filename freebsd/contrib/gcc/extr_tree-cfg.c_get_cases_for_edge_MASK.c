#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct edge_to_cases_elt {int /*<<< orphan*/ * case_labels; TYPE_1__* e; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_3__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_INSERT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  edge_to_cases ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void** FUNC5 (int /*<<< orphan*/ ,struct edge_to_cases_elt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static tree
FUNC9 (edge e, tree t)
{
  struct edge_to_cases_elt elt, *elt_p;
  void **slot;
  size_t i, n;
  tree vec;

  /* If we are not recording cases, then we do not have CASE_LABEL_EXPR
     chains available.  Return NULL so the caller can detect this case.  */
  if (!FUNC8 ())
    return NULL;

restart:
  elt.e = e;
  elt.case_labels = NULL;
  slot = FUNC5 (edge_to_cases, &elt, NO_INSERT);

  if (slot)
    {
      elt_p = (struct edge_to_cases_elt *)*slot;
      return elt_p->case_labels;
    }

  /* If we did not find E in the hash table, then this must be the first
     time we have been queried for information about E & T.  Add all the
     elements from T to the hash table then perform the query again.  */

  vec = FUNC1 (t);
  n = FUNC3 (vec);
  for (i = 0; i < n; i++)
    {
      tree lab = FUNC0 (FUNC2 (vec, i));
      basic_block label_bb = FUNC6 (lab);
      FUNC7 (FUNC4 (e->src, label_bb), FUNC2 (vec, i));
    }
  goto restart;
}