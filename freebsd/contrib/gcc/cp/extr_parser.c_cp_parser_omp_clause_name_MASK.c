#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ pragma_omp_clause ;
struct TYPE_6__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
struct TYPE_5__ {int /*<<< orphan*/  value; } ;
struct TYPE_7__ {TYPE_1__ u; } ;

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
 int /*<<< orphan*/  RID_PRIVATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static pragma_omp_clause
FUNC6 (cp_parser *parser)
{
  pragma_omp_clause result = PRAGMA_OMP_CLAUSE_NONE;

  if (FUNC3 (parser->lexer, RID_IF))
    result = PRAGMA_OMP_CLAUSE_IF;
  else if (FUNC3 (parser->lexer, RID_DEFAULT))
    result = PRAGMA_OMP_CLAUSE_DEFAULT;
  else if (FUNC3 (parser->lexer, RID_PRIVATE))
    result = PRAGMA_OMP_CLAUSE_PRIVATE;
  else if (FUNC2 (parser->lexer, CPP_NAME))
    {
      tree id = FUNC4 (parser->lexer)->u.value;
      const char *p = FUNC0 (id);

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
    FUNC1 (parser->lexer);

  return result;
}