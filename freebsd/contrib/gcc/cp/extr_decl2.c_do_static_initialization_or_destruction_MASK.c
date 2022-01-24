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
typedef  scalar_t__ tree ;
typedef  TYPE_1__* priority_info ;
struct TYPE_3__ {int initializations_p; int destructions_p; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 TYPE_1__* FUNC12 (int) ; 
 int /*<<< orphan*/  initialize_p_decl ; 
 scalar_t__ integer_one_node ; 
 scalar_t__ integer_zero_node ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  priority_decl ; 

__attribute__((used)) static void
FUNC14 (tree vars, bool initp)
{
  tree node, init_if_stmt, cond;

  /* Build the outer if-stmt to check for initialization or destruction.  */
  init_if_stmt = FUNC6 ();
  cond = initp ? integer_one_node : integer_zero_node;
  cond = FUNC8 (EQ_EXPR,
				  initialize_p_decl,
				  cond);
  FUNC10 (cond, init_if_stmt);

  node = vars;
  do {
    tree decl = FUNC4 (node);
    tree priority_if_stmt;
    int priority;
    priority_info pi;

    /* If we don't need a destructor, there's nothing to do.  Avoid
       creating a possibly empty if-stmt.  */
    if (!initp && FUNC5 (FUNC3 (decl)))
      {
	node = FUNC1 (node);
	continue;
      }

    /* Remember that we had an initialization or finalization at this
       priority.  */
    priority = FUNC0 (decl);
    pi = FUNC12 (priority);
    if (initp)
      pi->initializations_p = 1;
    else
      pi->destructions_p = 1;

    /* Conditionalize this initialization on being in the right priority
       and being initializing/finalizing appropriately.  */
    priority_if_stmt = FUNC6 ();
    cond = FUNC8 (EQ_EXPR,
			       priority_decl,
			       FUNC7 (NULL_TREE, priority));
    FUNC10 (cond, priority_if_stmt);

    /* Process initializers with same priority.  */
    for (; node
	   && FUNC0 (FUNC4 (node)) == priority;
	 node = FUNC1 (node))
      /* Do one initialization or destruction.  */
      FUNC13 (FUNC4 (node),
						FUNC2 (node), initp);

    /* Finish up the priority if-stmt body.  */
    FUNC11 (priority_if_stmt);
    FUNC9 (priority_if_stmt);

  } while (node);

  /* Finish up the init/destruct if-stmt body.  */
  FUNC11 (init_if_stmt);
  FUNC9 (init_if_stmt);
}