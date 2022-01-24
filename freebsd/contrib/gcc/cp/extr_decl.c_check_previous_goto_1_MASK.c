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
typedef  scalar_t__ tree ;
struct cp_binding_level {scalar_t__ names; scalar_t__ kind; struct cp_binding_level* level_chain; } ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct cp_binding_level* current_binding_level ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 scalar_t__ sk_catch ; 
 scalar_t__ sk_omp ; 
 scalar_t__ sk_try ; 

__attribute__((used)) static bool
FUNC5 (tree decl, struct cp_binding_level* level, tree names,
		       bool exited_omp, const location_t *locus)
{
  struct cp_binding_level *b;
  bool identified = false, saw_eh = false, saw_omp = false;

  if (exited_omp)
    {
      FUNC3 (decl, locus);
      FUNC2 ("  exits OpenMP structured block");
      identified = saw_omp = true;
    }

  for (b = current_binding_level; b ; b = b->level_chain)
    {
      tree new_decls, old_decls = (b == level ? names : NULL_TREE);

      for (new_decls = b->names; new_decls != old_decls;
	   new_decls = FUNC0 (new_decls))
	{
	  int problem = FUNC1 (new_decls);
	  if (! problem)
	    continue;

	  if (!identified)
	    {
	      FUNC3 (decl, locus);
	      identified = true;
	    }
	  if (problem > 1)
	    FUNC2 ("  crosses initialization of %q+#D", new_decls);
	  else
	    FUNC4 ("  enters scope of non-POD %q+#D", new_decls);
	}

      if (b == level)
	break;
      if ((b->kind == sk_try || b->kind == sk_catch) && !saw_eh)
	{
	  if (!identified)
	    {
	      FUNC3 (decl, locus);
	      identified = true;
	    }
	  if (b->kind == sk_try)
	    FUNC2 ("  enters try block");
	  else
	    FUNC2 ("  enters catch block");
	  saw_eh = true;
	}
      if (b->kind == sk_omp && !saw_omp)
	{
	  if (!identified)
	    {
	      FUNC3 (decl, locus);
	      identified = true;
	    }
	  FUNC2 ("  enters OpenMP structured block");
	  saw_omp = true;
	}
    }

  return !identified;
}