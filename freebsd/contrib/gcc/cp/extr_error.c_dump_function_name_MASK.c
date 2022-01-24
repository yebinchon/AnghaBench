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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_DECL ; 
 int TFF_PLAIN_IDENTIFIER ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC22 (tree t, int flags)
{
  tree name = FUNC6 (t);

  /* We can get here with a decl that was synthesized by language-
     independent machinery (e.g. coverage.c) in which case it won't
     have a lang_specific structure attached and DECL_CONSTRUCTOR_P
     will crash.  In this case it is safe just to print out the
     literal name.  */
  if (!FUNC5 (t))
    {
      FUNC21 (cxx_pp, name);
      return;
    }

  if (FUNC13 (t) == TEMPLATE_DECL)
    t = FUNC8 (t);

  /* Don't let the user see __comp_ctor et al.  */
  if (FUNC0 (t)
      || FUNC3 (t))
    name = FUNC15 (FUNC1 (t));

  if (FUNC3 (t))
    {
      FUNC19 (cxx_pp);
      FUNC16 (name, TFF_PLAIN_IDENTIFIER);
    }
  else if (FUNC2 (t))
    {
      /* This cannot use the hack that the operator's return
	 type is stashed off of its name because it may be
	 used for error reporting.  In the case of conflicting
	 declarations, both will have the same name, yet
	 the types will be different, hence the TREE_TYPE field
	 of the first name will be clobbered by the second.  */
      FUNC20 (cxx_pp, "operator");
      FUNC18 (FUNC14 (FUNC14 (t)), flags);
    }
  else if (FUNC11 (name))
    FUNC21 (cxx_pp, name);
  else
    FUNC16 (name, flags);

  if (FUNC7 (t)
      && !FUNC4 (t)
      && (FUNC13 (FUNC9 (t)) != TEMPLATE_DECL
	  || FUNC12 (FUNC9 (t))))
    FUNC17 (FUNC7 (t), !FUNC10 (t), flags);
}