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
struct frame_info {int dummy; } ;
struct expression {int dummy; } ;
struct cleanup {int dummy; } ;
struct agent_expr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct agent_expr*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 int /*<<< orphan*/  gdb_stdout ; 
 struct agent_expr* FUNC5 (int /*<<< orphan*/ ,struct expression*) ; 
 struct frame_info* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct frame_info*) ; 
 struct cleanup* FUNC8 (int /*<<< orphan*/ ,struct expression**) ; 
 int /*<<< orphan*/  FUNC9 (struct agent_expr*) ; 
 scalar_t__ overlay_debugging ; 
 struct expression* FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11 (char *exp, int from_tty)
{
  struct cleanup *old_chain = 0;
  struct expression *expr;
  struct agent_expr *agent;
  struct frame_info *fi = FUNC6 ();	/* need current scope */

  /* We don't deal with overlay debugging at the moment.  We need to
     think more carefully about this.  If you copy this code into
     another command, change the error message; the user shouldn't
     have to know anything about agent expressions.  */
  if (overlay_debugging)
    FUNC3 ("GDB can't do agent expression translation with overlays.");

  if (exp == 0)
    FUNC4 ("expression to translate");

  expr = FUNC10 (exp);
  old_chain = FUNC8 (free_current_contents, &expr);
  agent = FUNC5 (FUNC7 (fi), expr);
  FUNC9 (agent);
  FUNC0 (gdb_stdout, agent);

  /* It would be nice to call ax_reqs here to gather some general info
     about the expression, and then print out the result.  */

  FUNC1 (old_chain);
  FUNC2 ();
}