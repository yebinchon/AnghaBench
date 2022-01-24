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
typedef  scalar_t__ pragma_omp_clause ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_NAME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_COPYIN ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_COPYPRIVATE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_DEFAULT ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_FIRSTPRIVATE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_IF ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_LASTPRIVATE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_NONE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_NOWAIT ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_NUM_THREADS ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_ORDERED ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_PRIVATE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_REDUCTION ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_SCHEDULE ; 
 scalar_t__ PRAGMA_OMP_CLAUSE_SHARED ; 
 int /*<<< orphan*/  RID_DEFAULT ; 
 int /*<<< orphan*/  RID_IF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static pragma_omp_clause
FUNC6 (c_parser *parser)
{
  pragma_omp_clause result = PRAGMA_OMP_CLAUSE_NONE;

  if (FUNC3 (parser, RID_IF))
    result = PRAGMA_OMP_CLAUSE_IF;
  else if (FUNC3 (parser, RID_DEFAULT))
    result = PRAGMA_OMP_CLAUSE_DEFAULT;
  else if (FUNC2 (parser, CPP_NAME))
    {
      const char *p = FUNC0 (FUNC4 (parser)->value);

      switch (p[0])
	{
	case 'c':
	  if (!FUNC5 ("copyin", p))
	    result = PRAGMA_OMP_CLAUSE_COPYIN;
          else if (!FUNC5 ("copyprivate", p))
	    result = PRAGMA_OMP_CLAUSE_COPYPRIVATE;
	  break;
	case 'f':
	  if (!FUNC5 ("firstprivate", p))
	    result = PRAGMA_OMP_CLAUSE_FIRSTPRIVATE;
	  break;
	case 'l':
	  if (!FUNC5 ("lastprivate", p))
	    result = PRAGMA_OMP_CLAUSE_LASTPRIVATE;
	  break;
	case 'n':
	  if (!FUNC5 ("nowait", p))
	    result = PRAGMA_OMP_CLAUSE_NOWAIT;
	  else if (!FUNC5 ("num_threads", p))
	    result = PRAGMA_OMP_CLAUSE_NUM_THREADS;
	  break;
	case 'o':
	  if (!FUNC5 ("ordered", p))
	    result = PRAGMA_OMP_CLAUSE_ORDERED;
	  break;
	case 'p':
	  if (!FUNC5 ("private", p))
	    result = PRAGMA_OMP_CLAUSE_PRIVATE;
	  break;
	case 'r':
	  if (!FUNC5 ("reduction", p))
	    result = PRAGMA_OMP_CLAUSE_REDUCTION;
	  break;
	case 's':
	  if (!FUNC5 ("schedule", p))
	    result = PRAGMA_OMP_CLAUSE_SCHEDULE;
	  else if (!FUNC5 ("shared", p))
	    result = PRAGMA_OMP_CLAUSE_SHARED;
	  break;
	}
    }

  if (result != PRAGMA_OMP_CLAUSE_NONE)
    FUNC1 (parser);

  return result;
}