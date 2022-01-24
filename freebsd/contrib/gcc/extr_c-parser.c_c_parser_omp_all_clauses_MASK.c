#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  int pragma_omp_clause ;
struct TYPE_20__ {int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_PRAGMA_EOL ; 
#define  PRAGMA_OMP_CLAUSE_COPYIN 140 
#define  PRAGMA_OMP_CLAUSE_COPYPRIVATE 139 
#define  PRAGMA_OMP_CLAUSE_DEFAULT 138 
#define  PRAGMA_OMP_CLAUSE_FIRSTPRIVATE 137 
#define  PRAGMA_OMP_CLAUSE_IF 136 
#define  PRAGMA_OMP_CLAUSE_LASTPRIVATE 135 
#define  PRAGMA_OMP_CLAUSE_NOWAIT 134 
#define  PRAGMA_OMP_CLAUSE_NUM_THREADS 133 
#define  PRAGMA_OMP_CLAUSE_ORDERED 132 
#define  PRAGMA_OMP_CLAUSE_PRIVATE 131 
#define  PRAGMA_OMP_CLAUSE_REDUCTION 130 
#define  PRAGMA_OMP_CLAUSE_SCHEDULE 129 
#define  PRAGMA_OMP_CLAUSE_SHARED 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,char const*) ; 

__attribute__((used)) static tree
FUNC19 (c_parser *parser, unsigned int mask,
			  const char *where)
{
  tree clauses = NULL;

  while (FUNC2 (parser, CPP_PRAGMA_EOL))
    {
      const pragma_omp_clause c_kind = FUNC9 (parser);
      const char *c_name;
      tree prev = clauses;

      switch (c_kind)
	{
	case PRAGMA_OMP_CLAUSE_COPYIN:
	  clauses = FUNC3 (parser, clauses);
	  c_name = "copyin";
	  break;
	case PRAGMA_OMP_CLAUSE_COPYPRIVATE:
	  clauses = FUNC4 (parser, clauses);
	  c_name = "copyprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_DEFAULT:
	  clauses = FUNC5 (parser, clauses);
	  c_name = "default";
	  break;
	case PRAGMA_OMP_CLAUSE_FIRSTPRIVATE:
	  clauses = FUNC6 (parser, clauses);
	  c_name = "firstprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_IF:
	  clauses = FUNC7 (parser, clauses);
	  c_name = "if";
	  break;
	case PRAGMA_OMP_CLAUSE_LASTPRIVATE:
	  clauses = FUNC8 (parser, clauses);
	  c_name = "lastprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_NOWAIT:
	  clauses = FUNC10 (parser, clauses);
	  c_name = "nowait";
	  break;
	case PRAGMA_OMP_CLAUSE_NUM_THREADS:
	  clauses = FUNC11 (parser, clauses);
	  c_name = "num_threads";
	  break;
	case PRAGMA_OMP_CLAUSE_ORDERED:
	  clauses = FUNC12 (parser, clauses);
	  c_name = "ordered";
	  break;
	case PRAGMA_OMP_CLAUSE_PRIVATE:
	  clauses = FUNC13 (parser, clauses);
	  c_name = "private";
	  break;
	case PRAGMA_OMP_CLAUSE_REDUCTION:
	  clauses = FUNC14 (parser, clauses);
	  c_name = "reduction";
	  break;
	case PRAGMA_OMP_CLAUSE_SCHEDULE:
	  clauses = FUNC15 (parser, clauses);
	  c_name = "schedule";
	  break;
	case PRAGMA_OMP_CLAUSE_SHARED:
	  clauses = FUNC16 (parser, clauses);
	  c_name = "shared";
	  break;
	default:
	  FUNC1 (parser, "expected %<#pragma omp%> clause");
	  goto saw_error;
	}

      if (((mask >> c_kind) & 1) == 0 && !parser->error)
	{
	  /* Remove the invalid clause(s) from the list to avoid
	     confusing the rest of the compiler.  */
	  clauses = prev;
	  FUNC18 ("%qs is not valid for %qs", c_name, where);
	}
    }

 saw_error:
  FUNC17 (parser);

  return FUNC0 (clauses);
}