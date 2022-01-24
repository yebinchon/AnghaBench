#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct tree_niter_desc {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_12__ {scalar_t__ has_volatile_ops; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  dest; } ;

/* Variables and functions */
#define  ASM_EXPR 131 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int BB_IRREDUCIBLE_LOOP ; 
#define  CALL_EXPR 130 
#define  MODIFY_EXPR 129 
 scalar_t__ FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  RETURN_EXPR 128 
 int /*<<< orphan*/  SSA_OP_VIRTUAL_DEFS ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct loop*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__**) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 TYPE_2__** FUNC14 (struct loop*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct loop*,TYPE_1__*,struct tree_niter_desc*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (struct loop*) ; 
 TYPE_3__* FUNC19 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC20 (struct loop *loop)
{
  edge exit;
  struct tree_niter_desc niter;
  tree phi, def;
  basic_block *body;
  block_stmt_iterator bsi;
  unsigned i;
  tree stmt;

  /* If the loop has multiple exits, it is too hard for us to handle.
     Similarly, if the exit is not dominating, we cannot determine
     whether the loop is not infinite.  */
  exit = FUNC18 (loop);
  if (!exit)
    return false;

  /* The loop must be finite.  */
  if (!FUNC16 (loop, exit, &niter, false))
    return false;

  /* Values of all loop exit phi nodes must be invariants.  */
  for (phi = FUNC17 (exit->dest); phi; phi = FUNC2 (phi))
    {
      if (!FUNC15 (FUNC3 (phi)))
	continue;

      def = FUNC1 (phi, exit);

      if (!FUNC11 (loop, def))
	return false;
    }

  /* And there should be no memory modifying or from other reasons
     unremovable statements.  */
  body = FUNC14 (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      /* Irreducible region might be infinite.  */
      if (body[i]->flags & BB_IRREDUCIBLE_LOOP)
	{
	  FUNC12 (body);
	  return false;
	}
	
      for (bsi = FUNC9 (body[i]); !FUNC7 (bsi); FUNC8 (&bsi))
	{
	  stmt = FUNC10 (bsi);
	  if (!FUNC6 (stmt, SSA_OP_VIRTUAL_DEFS)
	      || FUNC19 (stmt)->has_volatile_ops)
	    {
	      FUNC12 (body);
	      return false;
	    }

	  /* Also, asm statements and calls may have side effects and we
	     cannot change the number of times they are executed.  */
	  switch (FUNC4 (stmt))
	    {
	    case RETURN_EXPR:
	    case MODIFY_EXPR:
	      stmt = FUNC13 (stmt);
	      if (!stmt)
		break;

	    case CALL_EXPR:
	      if (FUNC5 (stmt))
		{
		  FUNC12 (body);
		  return false;
		}
	      break;

	    case ASM_EXPR:
	      /* We cannot remove volatile assembler.  */
	      if (FUNC0 (stmt))
		{
		  FUNC12 (body);
		  return false;
		}
	      break;

	    default:
	      break;
	    }
	}
      }
  FUNC12 (body);

  return true;
}