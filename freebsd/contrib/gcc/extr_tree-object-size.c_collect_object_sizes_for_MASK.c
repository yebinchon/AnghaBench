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
struct object_size_info {int object_size_type; scalar_t__ pass; int /*<<< orphan*/  reexamine; int /*<<< orphan*/  visited; } ;

/* Variables and functions */
#define  ASM_EXPR 132 
 int CALL_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  MODIFY_EXPR 131 
#define  NOP_EXPR 130 
 int PARM_DECL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
#define  PHI_NODE 129 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  RETURN_EXPR 128 
 int SSA_NAME ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/ * computed ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC15 (struct object_size_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (struct object_size_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int** object_sizes ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (struct object_size_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int* unknown ; 

__attribute__((used)) static void
FUNC23 (struct object_size_info *osi, tree var)
{
  int object_size_type = osi->object_size_type;
  unsigned int varno = FUNC7 (var);
  tree stmt;
  bool reexamine;

  if (FUNC12 (computed[object_size_type], varno))
    return;

  if (osi->pass == 0)
    {
      if (! FUNC12 (osi->visited, varno))
	{
	  FUNC14 (osi->visited, varno);
	  object_sizes[object_size_type][varno]
	    = (object_size_type & 2) ? -1 : 0;
	}
      else
	{
	  /* Found a dependency loop.  Mark the variable for later
	     re-examination.  */
	  FUNC14 (osi->reexamine, varno);
	  if (dump_file && (dump_flags & TDF_DETAILS))
	    {
	      FUNC16 (dump_file, "Found a dependency loop at ");
	      FUNC22 (dump_file, var, dump_flags);
	      FUNC16 (dump_file, "\n");
	    }
	  return;
	}
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC16 (dump_file, "Visiting use-def links for ");
      FUNC22 (dump_file, var, dump_flags);
      FUNC16 (dump_file, "\n");
    }

  stmt = FUNC5 (var);
  reexamine = false;

  switch (FUNC9 (stmt))
    {
    case RETURN_EXPR:
      FUNC17 (FUNC9 (FUNC10 (stmt, 0)) == MODIFY_EXPR);
      stmt = FUNC10 (stmt, 0);
      /* FALLTHRU  */

    case MODIFY_EXPR:
      {
	tree rhs = FUNC10 (stmt, 1), arg;
	FUNC8 (rhs);

	if (FUNC9 (rhs) == CALL_EXPR)
	  {
	    arg = FUNC20 (rhs);
	    if (arg)
	      rhs = arg;
	  }

	if (FUNC9 (rhs) == SSA_NAME
	    && FUNC4 (FUNC11 (rhs)))
	  reexamine = FUNC19 (osi, var, rhs, 0);

	else if (FUNC9 (rhs) == PLUS_EXPR)
	  reexamine = FUNC21 (osi, var, rhs);

	else
	  FUNC15 (osi, var, rhs);
	break;
      }

    case ASM_EXPR:
      /* Pointers defined by __asm__ statements can point anywhere.  */
      object_sizes[object_size_type][varno] = unknown[object_size_type];
      break;

    case NOP_EXPR:
      {
	tree decl = FUNC6 (var);

	FUNC17 (FUNC1 (stmt));

	if (FUNC9 (decl) != PARM_DECL && FUNC0 (decl))
	  FUNC15 (osi, var, FUNC0 (decl));
	else
	  FUNC15 (osi, var, decl);
      }
      break;

    case PHI_NODE:
      {
	int i;

	for (i = 0; i < FUNC3 (stmt); i++)
	  {
	    tree rhs = FUNC2 (stmt, i);

	    if (object_sizes[object_size_type][varno]
		== unknown[object_size_type])
	      break;

	    if (FUNC9 (rhs) == SSA_NAME)
	      reexamine |= FUNC19 (osi, var, rhs, 0);
	    else if (osi->pass == 0)
	      FUNC15 (osi, var, rhs);
	  }
	break;
      }
    default:
      FUNC18 ();
    }

  if (! reexamine
      || object_sizes[object_size_type][varno] == unknown[object_size_type])
    {
      FUNC14 (computed[object_size_type], varno);
      FUNC13 (osi->reexamine, varno);
    }
  else
    {
      FUNC14 (osi->reexamine, varno);
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC16 (dump_file, "Need to reexamine ");
	  FUNC22 (dump_file, var, dump_flags);
	  FUNC16 (dump_file, "\n");
	}
    }
}