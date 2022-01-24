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
struct omp_for_data {void* v; int cond_code; void* n2; void* step; int have_nowait; int have_ordered; scalar_t__ sched_kind; int /*<<< orphan*/ * chunk_size; void* for_stmt; void* n1; int /*<<< orphan*/ * pre; } ;

/* Variables and functions */
 int FUNC0 (void*) ; 
#define  GE_EXPR 136 
#define  GT_EXPR 135 
 int INTEGER_TYPE ; 
#define  LE_EXPR 134 
#define  LT_EXPR 133 
#define  MINUS_EXPR 132 
 int MODIFY_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
#define  OMP_CLAUSE_NOWAIT 131 
#define  OMP_CLAUSE_ORDERED 130 
#define  OMP_CLAUSE_SCHEDULE 129 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 scalar_t__ OMP_CLAUSE_SCHEDULE_RUNTIME ; 
 scalar_t__ OMP_CLAUSE_SCHEDULE_STATIC ; 
 void* FUNC5 (void*) ; 
 void* FUNC6 (void*) ; 
 void* FUNC7 (void*) ; 
 void* FUNC8 (void*) ; 
#define  PLUS_EXPR 128 
 int FUNC9 (void*) ; 
 void* FUNC10 (void*,int) ; 
 void* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC14 (int,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * integer_one_node ; 
 int /*<<< orphan*/ * integer_zero_node ; 

__attribute__((used)) static void
FUNC17 (tree for_stmt, struct omp_for_data *fd)
{
  tree t;

  fd->for_stmt = for_stmt;
  fd->pre = NULL;

  t = FUNC8 (for_stmt);
  FUNC15 (FUNC9 (t) == MODIFY_EXPR);
  fd->v = FUNC10 (t, 0);
  FUNC15 (FUNC0 (fd->v));
  FUNC15 (FUNC9 (FUNC11 (fd->v)) == INTEGER_TYPE);
  fd->n1 = FUNC10 (t, 1);

  t = FUNC6 (for_stmt);
  fd->cond_code = FUNC9 (t);
  FUNC15 (FUNC10 (t, 0) == fd->v);
  fd->n2 = FUNC10 (t, 1);
  switch (fd->cond_code)
    {
    case LT_EXPR:
    case GT_EXPR:
      break;
    case LE_EXPR:
      fd->n2 = FUNC14 (PLUS_EXPR, FUNC11 (fd->n2), fd->n2,
			   FUNC12 (FUNC11 (fd->n2), 1));
      fd->cond_code = LT_EXPR;
      break;
    case GE_EXPR:
      fd->n2 = FUNC14 (MINUS_EXPR, FUNC11 (fd->n2), fd->n2,
			   FUNC12 (FUNC11 (fd->n2), 1));
      fd->cond_code = GT_EXPR;
      break;
    default:
      FUNC16 ();
    }

  t = FUNC7 (fd->for_stmt);
  FUNC15 (FUNC9 (t) == MODIFY_EXPR);
  FUNC15 (FUNC10 (t, 0) == fd->v);
  t = FUNC10 (t, 1);
  FUNC15 (FUNC10 (t, 0) == fd->v);
  switch (FUNC9 (t))
    {
    case PLUS_EXPR:
      fd->step = FUNC10 (t, 1);
      break;
    case MINUS_EXPR:
      fd->step = FUNC10 (t, 1);
      fd->step = FUNC13 (NEGATE_EXPR, FUNC11 (fd->step), fd->step);
      break;
    default:
      FUNC16 ();
    }

  fd->have_nowait = fd->have_ordered = false;
  fd->sched_kind = OMP_CLAUSE_SCHEDULE_STATIC;
  fd->chunk_size = NULL_TREE;

  for (t = FUNC5 (for_stmt); t ; t = FUNC1 (t))
    switch (FUNC2 (t))
      {
      case OMP_CLAUSE_NOWAIT:
	fd->have_nowait = true;
	break;
      case OMP_CLAUSE_ORDERED:
	fd->have_ordered = true;
	break;
      case OMP_CLAUSE_SCHEDULE:
	fd->sched_kind = FUNC4 (t);
	fd->chunk_size = FUNC3 (t);
	break;
      default:
	break;
      }

  if (fd->sched_kind == OMP_CLAUSE_SCHEDULE_RUNTIME)
    FUNC15 (fd->chunk_size == NULL);
  else if (fd->chunk_size == NULL)
    {
      /* We only need to compute a default chunk size for ordered
	 static loops and dynamic loops.  */
      if (fd->sched_kind != OMP_CLAUSE_SCHEDULE_STATIC || fd->have_ordered)
	fd->chunk_size = (fd->sched_kind == OMP_CLAUSE_SCHEDULE_STATIC)
			 ? integer_zero_node : integer_one_node;
    }
}