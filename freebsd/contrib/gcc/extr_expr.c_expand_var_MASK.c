#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {scalar_t__ (* expand_decl ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ LABEL_DECL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__ lang_hooks ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11 (tree var)
{
  if (FUNC0 (var))
    return;

  if (FUNC6 (var))
    /* If this is an inlined copy of a static local variable,
       look up the original decl.  */
    var = FUNC2 (var);

  if (FUNC6 (var)
      ? !FUNC4 (var)
      : !FUNC3 (var))
    {
      if (FUNC5 (var) == VAR_DECL && FUNC1 (var))
	/* Should be ignored.  */;
      else if (lang_hooks.expand_decl (var))
	/* OK.  */;
      else if (FUNC5 (var) == VAR_DECL && !FUNC6 (var))
	FUNC7 (var);
      else if (FUNC5 (var) == VAR_DECL && FUNC6 (var))
	FUNC9 (var, 0, 0);
      else
	/* No expansion needed.  */
	FUNC8 (FUNC5 (var) == TYPE_DECL
		    || FUNC5 (var) == CONST_DECL
		    || FUNC5 (var) == FUNCTION_DECL
		    || FUNC5 (var) == LABEL_DECL);
    }
}