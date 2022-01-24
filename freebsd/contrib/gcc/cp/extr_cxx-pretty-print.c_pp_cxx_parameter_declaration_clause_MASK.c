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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  cxx_pretty_printer ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ METHOD_TYPE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int pp_c_flag_abstract ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int pp_cxx_flag_default_argument ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16 (cxx_pretty_printer *pp, tree t)
{
  tree args = FUNC7 (t) ? NULL : FUNC0 (t);
  tree types =
    FUNC7 (t) ? FUNC6 (t) : FUNC1 (t);
  const bool abstract = args == NULL
    || FUNC8 (pp)->flags & pp_c_flag_abstract;
  bool first = true;

  /* Skip artificial parameter for nonstatic member functions.  */
  if (FUNC3 (t) == METHOD_TYPE)
    types = FUNC2 (types);

  FUNC10 (pp);
  for (; args; args = FUNC2 (args), types = FUNC2 (types))
    {
      if (!first)
	FUNC13 (pp, ',');
      first = false;
      FUNC11 (pp, abstract ? FUNC5 (types) : args);
      if (!abstract && FUNC8 (pp)->flags & pp_cxx_flag_default_argument)
	{
	  FUNC14 (pp);
	  FUNC15 (pp);
	  FUNC14 (pp);
	  FUNC9 (pp, FUNC4 (types));
	}
    }
  FUNC12 (pp);
}