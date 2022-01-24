#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_10__ {int flags; } ;
typedef  TYPE_1__ c_pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int pp_c_flag_abstract ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char) ; 
 scalar_t__ void_list_node ; 

void
FUNC12 (c_pretty_printer *pp, tree t)
{
  bool want_parm_decl = FUNC1 (t) && !(pp->flags & pp_c_flag_abstract);
  tree parms = want_parm_decl ? FUNC0 (t) :  FUNC4 (t);
  FUNC7 (pp);
  if (parms == void_list_node)
    FUNC6 (pp, "void");
  else
    {
      bool first = true;
      for ( ; parms && parms != void_list_node; parms = FUNC2 (parms))
	{
	  if (!first)
	    FUNC11 (pp, ',');
	  first = false;
	  FUNC9
	    (pp, want_parm_decl ? parms : FUNC3 (parms));
	  if (want_parm_decl)
	    FUNC10 (pp, parms);
	  else
	    FUNC5 (pp, FUNC3 (parms));
	}
    }
  FUNC8 (pp);
}