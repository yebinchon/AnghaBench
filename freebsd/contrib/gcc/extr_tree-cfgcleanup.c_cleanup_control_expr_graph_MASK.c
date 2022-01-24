#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  edge_iterator ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_12__ {int /*<<< orphan*/  succs; } ;
struct TYPE_11__ {scalar_t__ probability; int /*<<< orphan*/  flags; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
#define  COND_EXPR 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int INTEGER_CST ; 
 scalar_t__ REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SWITCH_EXPR 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARN_STRICT_OVERFLOW_CONDITIONAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC18 (basic_block bb, block_stmt_iterator bsi)
{
  edge taken_edge;
  bool retval = false;
  tree expr = FUNC4 (bsi), val;

  if (!FUNC17 (bb))
    {
      edge e;
      edge_iterator ei;
      bool warned;

      FUNC10 ();

      switch (FUNC2 (expr))
	{
	case COND_EXPR:
	  val = FUNC9 (FUNC0 (expr));
	  break;

	case SWITCH_EXPR:
	  val = FUNC9 (FUNC1 (expr));
	  if (FUNC2 (val) != INTEGER_CST)
	    {
	      FUNC11 ();
	      return false;
	    }
	  break;

	default:
	  FUNC14 ();
	}

      taken_edge = FUNC8 (bb, val);
      if (!taken_edge)
	{
	  FUNC11 ();
	  return false;
	}

      /* Remove all the edges except the one that is always executed.  */
      warned = false;
      for (ei = FUNC7 (bb->succs); (e = FUNC6 (ei)); )
	{
	  if (e != taken_edge)
	    {
	      if (!warned)
		{
		  FUNC12
		    (true, expr, WARN_STRICT_OVERFLOW_CONDITIONAL);
		  warned = true;
		}

	      taken_edge->probability += e->probability;
	      taken_edge->count += e->count;
	      FUNC15 (e);
	      retval = true;
	    }
	  else
	    FUNC5 (&ei);
	}
      if (!warned)
	FUNC11 ();
      if (taken_edge->probability > REG_BR_PROB_BASE)
	taken_edge->probability = REG_BR_PROB_BASE;
    }
  else
    taken_edge = FUNC16 (bb);

  FUNC3 (&bsi, true);
  taken_edge->flags = EDGE_FALLTHRU;

  /* We removed some paths from the cfg.  */
  FUNC13 (CDI_DOMINATORS);

  return retval;
}