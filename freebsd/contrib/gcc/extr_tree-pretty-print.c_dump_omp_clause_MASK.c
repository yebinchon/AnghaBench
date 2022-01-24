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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_COPYIN 148 
#define  OMP_CLAUSE_COPYPRIVATE 147 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_DEFAULT 146 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_DEFAULT_NONE 145 
#define  OMP_CLAUSE_DEFAULT_PRIVATE 144 
#define  OMP_CLAUSE_DEFAULT_SHARED 143 
#define  OMP_CLAUSE_DEFAULT_UNSPECIFIED 142 
#define  OMP_CLAUSE_FIRSTPRIVATE 141 
#define  OMP_CLAUSE_IF 140 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_LASTPRIVATE 139 
#define  OMP_CLAUSE_NOWAIT 138 
#define  OMP_CLAUSE_NUM_THREADS 137 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_ORDERED 136 
#define  OMP_CLAUSE_PRIVATE 135 
#define  OMP_CLAUSE_REDUCTION 134 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_SCHEDULE 133 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_SCHEDULE_DYNAMIC 132 
#define  OMP_CLAUSE_SCHEDULE_GUIDED 131 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
#define  OMP_CLAUSE_SCHEDULE_RUNTIME 130 
#define  OMP_CLAUSE_SCHEDULE_STATIC 129 
#define  OMP_CLAUSE_SHARED 128 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC13 (pretty_printer *buffer, tree clause, int spc, int flags)
{
  const char *name;

  switch (FUNC0 (clause))
    {
    case OMP_CLAUSE_PRIVATE:
      name = "private";
      goto print_remap;
    case OMP_CLAUSE_SHARED:
      name = "shared";
      goto print_remap;
    case OMP_CLAUSE_FIRSTPRIVATE:
      name = "firstprivate";
      goto print_remap;
    case OMP_CLAUSE_LASTPRIVATE:
      name = "lastprivate";
      goto print_remap;
    case OMP_CLAUSE_COPYIN:
      name = "copyin";
      goto print_remap;
    case OMP_CLAUSE_COPYPRIVATE:
      name = "copyprivate";
      goto print_remap;
  print_remap:
      FUNC12 (buffer, name);
      FUNC11 (buffer, '(');
      FUNC8 (buffer, FUNC1 (clause),
	  spc, flags, false);
      FUNC11 (buffer, ')');
      break;

    case OMP_CLAUSE_REDUCTION:
      FUNC12 (buffer, "reduction(");
      FUNC12 (buffer, FUNC10 (FUNC5 (clause)));
      FUNC11 (buffer, ':');
      FUNC8 (buffer, FUNC1 (clause),
	  spc, flags, false);
      FUNC11 (buffer, ')');
      break;

    case OMP_CLAUSE_IF:
      FUNC12 (buffer, "if(");
      FUNC8 (buffer, FUNC3 (clause),
	  spc, flags, false);
      FUNC11 (buffer, ')');
      break;

    case OMP_CLAUSE_NUM_THREADS:
      FUNC12 (buffer, "num_threads(");
      FUNC8 (buffer, FUNC4 (clause),
	  spc, flags, false);
      FUNC11 (buffer, ')');
      break;

    case OMP_CLAUSE_NOWAIT:
      FUNC12 (buffer, "nowait");
      break;
    case OMP_CLAUSE_ORDERED:
      FUNC12 (buffer, "ordered");
      break;

    case OMP_CLAUSE_DEFAULT:
      FUNC12 (buffer, "default(");
      switch (FUNC2 (clause))
	{
      case OMP_CLAUSE_DEFAULT_UNSPECIFIED:
	break;
      case OMP_CLAUSE_DEFAULT_SHARED:
	FUNC12 (buffer, "shared");
	break;
      case OMP_CLAUSE_DEFAULT_NONE:
	FUNC12 (buffer, "none");
	break;
      case OMP_CLAUSE_DEFAULT_PRIVATE:
	FUNC12 (buffer, "private");
	break;
      default:
	FUNC9 ();
	}
      FUNC11 (buffer, ')');
      break;

    case OMP_CLAUSE_SCHEDULE:
      FUNC12 (buffer, "schedule(");
      switch (FUNC7 (clause))
	{
      case OMP_CLAUSE_SCHEDULE_STATIC:
	FUNC12 (buffer, "static");
	break;
      case OMP_CLAUSE_SCHEDULE_DYNAMIC:
	FUNC12 (buffer, "dynamic");
	break;
      case OMP_CLAUSE_SCHEDULE_GUIDED:
	FUNC12 (buffer, "guided");
	break;
      case OMP_CLAUSE_SCHEDULE_RUNTIME:
	FUNC12 (buffer, "runtime");
	break;
      default:
	FUNC9 ();
	}
      if (FUNC6 (clause))
	{
	  FUNC11 (buffer, ',');
	  FUNC8 (buffer,
	      FUNC6 (clause),
	      spc, flags, false);
	}
      FUNC11 (buffer, ')');
      break;

    default:
      /* Should never happen.  */
      FUNC8 (buffer, clause, spc, flags, false);
      break;
    }
}