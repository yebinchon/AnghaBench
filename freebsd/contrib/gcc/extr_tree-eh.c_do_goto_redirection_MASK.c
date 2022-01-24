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
typedef  scalar_t__ tree ;
struct goto_queue_node {int /*<<< orphan*/  repl_stmt; int /*<<< orphan*/  stmt; int /*<<< orphan*/  cont_stmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOTO_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC2 (struct goto_queue_node *q, tree finlab, tree mod)
{
  tree x;

  q->cont_stmt = q->stmt;
  if (mod)
    FUNC0 (mod, &q->repl_stmt);

  x = FUNC1 (GOTO_EXPR, void_type_node, finlab);
  FUNC0 (x, &q->repl_stmt);
}