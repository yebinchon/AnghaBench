#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  int pragma_omp_clause ;
typedef  int /*<<< orphan*/  cp_token ;
struct TYPE_14__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_PRAGMA_EOL ; 
 int /*<<< orphan*/  OMP_CLAUSE_COPYIN ; 
 int /*<<< orphan*/  OMP_CLAUSE_COPYPRIVATE ; 
 int /*<<< orphan*/  OMP_CLAUSE_FIRSTPRIVATE ; 
 int /*<<< orphan*/  OMP_CLAUSE_LASTPRIVATE ; 
 int /*<<< orphan*/  OMP_CLAUSE_PRIVATE ; 
 int /*<<< orphan*/  OMP_CLAUSE_SHARED ; 
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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC14 (cp_parser *parser, unsigned int mask,
			   const char *where, cp_token *pragma_tok)
{
  tree clauses = NULL;

  while (FUNC0 (parser->lexer, CPP_PRAGMA_EOL))
    {
      pragma_omp_clause c_kind = FUNC4 (parser);
      const char *c_name;
      tree prev = clauses;

      switch (c_kind)
	{
	case PRAGMA_OMP_CLAUSE_COPYIN:
	  clauses = FUNC10 (parser, OMP_CLAUSE_COPYIN, clauses);
	  c_name = "copyin";
	  break;
	case PRAGMA_OMP_CLAUSE_COPYPRIVATE:
	  clauses = FUNC10 (parser, OMP_CLAUSE_COPYPRIVATE,
					    clauses);
	  c_name = "copyprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_DEFAULT:
	  clauses = FUNC2 (parser, clauses);
	  c_name = "default";
	  break;
	case PRAGMA_OMP_CLAUSE_FIRSTPRIVATE:
	  clauses = FUNC10 (parser, OMP_CLAUSE_FIRSTPRIVATE,
					    clauses);
	  c_name = "firstprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_IF:
	  clauses = FUNC3 (parser, clauses);
	  c_name = "if";
	  break;
	case PRAGMA_OMP_CLAUSE_LASTPRIVATE:
	  clauses = FUNC10 (parser, OMP_CLAUSE_LASTPRIVATE,
					    clauses);
	  c_name = "lastprivate";
	  break;
	case PRAGMA_OMP_CLAUSE_NOWAIT:
	  clauses = FUNC5 (parser, clauses);
	  c_name = "nowait";
	  break;
	case PRAGMA_OMP_CLAUSE_NUM_THREADS:
	  clauses = FUNC6 (parser, clauses);
	  c_name = "num_threads";
	  break;
	case PRAGMA_OMP_CLAUSE_ORDERED:
	  clauses = FUNC7 (parser, clauses);
	  c_name = "ordered";
	  break;
	case PRAGMA_OMP_CLAUSE_PRIVATE:
	  clauses = FUNC10 (parser, OMP_CLAUSE_PRIVATE,
					    clauses);
	  c_name = "private";
	  break;
	case PRAGMA_OMP_CLAUSE_REDUCTION:
	  clauses = FUNC8 (parser, clauses);
	  c_name = "reduction";
	  break;
	case PRAGMA_OMP_CLAUSE_SCHEDULE:
	  clauses = FUNC9 (parser, clauses);
	  c_name = "schedule";
	  break;
	case PRAGMA_OMP_CLAUSE_SHARED:
	  clauses = FUNC10 (parser, OMP_CLAUSE_SHARED,
					    clauses);
	  c_name = "shared";
	  break;
	default:
	  FUNC1 (parser, "expected %<#pragma omp%> clause");
	  goto saw_error;
	}

      if (((mask >> c_kind) & 1) == 0)
	{
	  /* Remove the invalid clause(s) from the list to avoid
	     confusing the rest of the compiler.  */
	  clauses = prev;
	  FUNC12 ("%qs is not valid for %qs", c_name, where);
	}
    }
 saw_error:
  FUNC11 (parser, pragma_tok);
  return FUNC13 (clauses);
}