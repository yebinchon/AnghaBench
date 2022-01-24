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
typedef  int /*<<< orphan*/ * tree ;
struct pointer_set_t {int dummy; } ;
struct cxx_int_tree_map {int /*<<< orphan*/ * to; int /*<<< orphan*/  uid; } ;
struct TYPE_2__ {scalar_t__ extern_decl_map; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ CLEANUP_STMT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 scalar_t__ OMP_CLAUSE ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
#define  OMP_CLAUSE_COPYIN 134 
#define  OMP_CLAUSE_COPYPRIVATE 133 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
#define  OMP_CLAUSE_FIRSTPRIVATE 132 
#define  OMP_CLAUSE_LASTPRIVATE 131 
#define  OMP_CLAUSE_PRIVATE 130 
#define  OMP_CLAUSE_REDUCTION 129 
#define  OMP_CLAUSE_SHARED 128 
 scalar_t__ PARM_DECL ; 
 scalar_t__ RETURN_EXPR ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRY_CATCH_EXPR ; 
 int /*<<< orphan*/  TRY_FINALLY_EXPR ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cp_function_chain ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,struct cxx_int_tree_map*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct pointer_set_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct pointer_set_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC20 (tree *stmt_p, int *walk_subtrees, void *data)
{
  tree stmt = *stmt_p;
  struct pointer_set_t *p_set = (struct pointer_set_t*) data;

  if (FUNC17 (stmt)
      /* Don't dereference parms in a thunk, pass the references through. */
      && !(FUNC4 (current_function_decl)
	   && FUNC9 (stmt) == PARM_DECL))
    {
      *stmt_p = FUNC14 (stmt);
      *walk_subtrees = 0;
      return NULL;
    }

  /* Map block scope extern declarations to visible declarations with the
     same name and type in outer scopes if any.  */
  if (cp_function_chain->extern_decl_map
      && (FUNC9 (stmt) == FUNCTION_DECL || FUNC9 (stmt) == VAR_DECL)
      && FUNC3 (stmt))
    {
      struct cxx_int_tree_map *h, in;
      in.uid = FUNC5 (stmt);
      h = (struct cxx_int_tree_map *)
	  FUNC16 (cp_function_chain->extern_decl_map,
			       &in, in.uid);
      if (h)
	{
	  *stmt_p = h->to;
	  *walk_subtrees = 0;
	  return NULL;
	}
    }

  /* Other than invisiref parms, don't walk the same tree twice.  */
  if (FUNC18 (p_set, stmt))
    {
      *walk_subtrees = 0;
      return NULL_TREE;
    }

  if (FUNC9 (stmt) == ADDR_EXPR
      && FUNC17 (FUNC10 (stmt, 0)))
    {
      *stmt_p = FUNC13 (FUNC11 (stmt), FUNC10 (stmt, 0));
      *walk_subtrees = 0;
    }
  else if (FUNC9 (stmt) == RETURN_EXPR
	   && FUNC10 (stmt, 0)
	   && FUNC17 (FUNC10 (stmt, 0)))
    /* Don't dereference an invisiref RESULT_DECL inside a RETURN_EXPR.  */
    *walk_subtrees = 0;
  else if (FUNC9 (stmt) == OMP_CLAUSE)
    switch (FUNC7 (stmt))
      {
      case OMP_CLAUSE_PRIVATE:
      case OMP_CLAUSE_SHARED:
      case OMP_CLAUSE_FIRSTPRIVATE:
      case OMP_CLAUSE_LASTPRIVATE:
      case OMP_CLAUSE_COPYIN:
      case OMP_CLAUSE_COPYPRIVATE:
	/* Don't dereference an invisiref in OpenMP clauses.  */
	if (FUNC17 (FUNC8 (stmt)))
	  *walk_subtrees = 0;
	break;
      case OMP_CLAUSE_REDUCTION:
	FUNC15 (!FUNC17 (FUNC8 (stmt)));
	break;
      default:
	break;
      }
  else if (FUNC6 (stmt))
    *walk_subtrees = 0;

  /* Due to the way voidify_wrapper_expr is written, we don't get a chance
     to lower this construct before scanning it, so we need to lower these
     before doing anything else.  */
  else if (FUNC9 (stmt) == CLEANUP_STMT)
    *stmt_p = FUNC12 (FUNC1 (stmt) ? TRY_CATCH_EXPR
					     : TRY_FINALLY_EXPR,
		      void_type_node,
		      FUNC0 (stmt),
		      FUNC2 (stmt));

  FUNC19 (p_set, *stmt_p);

  return NULL;
}