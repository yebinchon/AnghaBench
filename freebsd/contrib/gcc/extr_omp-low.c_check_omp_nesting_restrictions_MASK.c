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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  stmt; struct TYPE_3__* outer; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMP_CLAUSE_ORDERED ; 
#define  OMP_CRITICAL 134 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  OMP_FOR 133 
#define  OMP_MASTER 132 
#define  OMP_ORDERED 131 
#define  OMP_PARALLEL 130 
#define  OMP_SECTIONS 129 
#define  OMP_SINGLE 128 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5 (tree t, omp_context *ctx)
{
  switch (FUNC2 (t))
    {
    case OMP_FOR:
    case OMP_SECTIONS:
    case OMP_SINGLE:
      for (; ctx != NULL; ctx = ctx->outer)
	switch (FUNC2 (ctx->stmt))
	  {
	  case OMP_FOR:
	  case OMP_SECTIONS:
	  case OMP_SINGLE:
	  case OMP_ORDERED:
	  case OMP_MASTER:
	    FUNC4 (0, "work-sharing region may not be closely nested inside "
			"of work-sharing, critical, ordered or master region");
	    return;
	  case OMP_PARALLEL:
	    return;
	  default:
	    break;
	  }
      break;
    case OMP_MASTER:
      for (; ctx != NULL; ctx = ctx->outer)
	switch (FUNC2 (ctx->stmt))
	  {
	  case OMP_FOR:
	  case OMP_SECTIONS:
	  case OMP_SINGLE:
	    FUNC4 (0, "master region may not be closely nested inside "
			"of work-sharing region");
	    return;
	  case OMP_PARALLEL:
	    return;
	  default:
	    break;
	  }
      break;
    case OMP_ORDERED:
      for (; ctx != NULL; ctx = ctx->outer)
	switch (FUNC2 (ctx->stmt))
	  {
	  case OMP_CRITICAL:
	    FUNC4 (0, "ordered region may not be closely nested inside "
			"of critical region");
	    return;
	  case OMP_FOR:
	    if (FUNC3 (FUNC0 (ctx->stmt),
				 OMP_CLAUSE_ORDERED) == NULL)
	      FUNC4 (0, "ordered region must be closely nested inside "
			  "a loop region with an ordered clause");
	    return;
	  case OMP_PARALLEL:
	    return;
	  default:
	    break;
	  }
      break;
    case OMP_CRITICAL:
      for (; ctx != NULL; ctx = ctx->outer)
	if (FUNC2 (ctx->stmt) == OMP_CRITICAL
	    && FUNC1 (t) == FUNC1 (ctx->stmt))
	  {
	    FUNC4 (0, "critical region may not be nested inside a critical "
			"region with the same name");
	    return;
	  }
      break;
    default:
      break;
    }
}