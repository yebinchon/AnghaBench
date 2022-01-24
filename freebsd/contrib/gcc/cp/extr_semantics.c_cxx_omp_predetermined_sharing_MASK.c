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
typedef  int /*<<< orphan*/  tree ;
typedef  enum omp_clause_default_kind { ____Placeholder_omp_clause_default_kind } omp_clause_default_kind ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int OMP_CLAUSE_DEFAULT_SHARED ; 
 int OMP_CLAUSE_DEFAULT_UNSPECIFIED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

enum omp_clause_default_kind
FUNC5 (tree decl)
{
  enum omp_clause_default_kind kind;

  kind = FUNC4 (decl);
  if (kind != OMP_CLAUSE_DEFAULT_UNSPECIFIED)
    return kind;

  /* Static data members are predetermined as shared.  */
  if (FUNC2 (decl))
    {
      tree ctx = FUNC0 (decl);
      if (FUNC3 (ctx) && FUNC1 (ctx))
	return OMP_CLAUSE_DEFAULT_SHARED;
    }

  return OMP_CLAUSE_DEFAULT_UNSPECIFIED;
}