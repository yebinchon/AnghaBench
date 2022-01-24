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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ TEMPLATE_DECL ; 
 int TFF_CHASE_TYPEDEF ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 int TFF_SCOPE ; 
 int TFF_TEMPLATE_HEADER ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 char* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC24 (tree t, int flags)
{
  tree name;
  const char *variety = FUNC15 (t);
  int typdef = 0;
  int tmplate = 0;

  FUNC19 (cxx_pp, t);

  if (flags & TFF_CLASS_KEY_OR_ENUM)
    FUNC20 (cxx_pp, variety);

  if (flags & TFF_CHASE_TYPEDEF)
    t = FUNC12 (t);

  name = FUNC13 (t);

  if (name)
    {
      typdef = !FUNC5 (name);
      tmplate = !typdef && FUNC10 (t) != ENUMERAL_TYPE
		&& FUNC11 (t) && FUNC1 (t)
		&& (FUNC10 (FUNC2 (t)) != TEMPLATE_DECL
		    || FUNC9 (FUNC2 (t)));
      FUNC16 (FUNC4 (name), flags | TFF_SCOPE);
      if (tmplate)
	{
	  /* Because the template names are mangled, we have to locate
	     the most general template, and use that name.  */
	  tree tpl = FUNC2 (t);

	  while (FUNC7 (tpl))
	    tpl = FUNC8 (tpl);
	  name = tpl;
	}
      name = FUNC6 (name);
    }

  if (name == 0 || FUNC0 (name))
    {
      if (flags & TFF_CLASS_KEY_OR_ENUM)
	FUNC22 (cxx_pp, "<anonymous>");
      else
	FUNC23 (FUNC18 (cxx_pp), "<anonymous %s>", variety);
    }
  else
    FUNC21 (cxx_pp, name);
  if (tmplate)
    FUNC17 (FUNC14 (t),
			 !FUNC3 (t),
			 flags & ~TFF_TEMPLATE_HEADER);
}