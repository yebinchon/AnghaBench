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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wunused_parameter ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC7 (tree fn)
{
  tree decl;

  for (decl = FUNC0 (fn);
       decl; decl = FUNC3 (decl))
    if (!FUNC5 (decl) && FUNC4 (decl) == PARM_DECL
	&& FUNC2 (decl) && !FUNC1 (decl))
      FUNC6 (OPT_Wunused_parameter, "unused parameter %q+D", decl);
}