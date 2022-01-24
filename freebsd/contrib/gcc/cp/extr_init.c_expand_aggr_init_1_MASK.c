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
 scalar_t__ VAR_DECL ; 
 int FUNC3 () ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (tree binfo, tree true_exp, tree exp, tree init, int flags)
{
  tree type = FUNC2 (exp);

  FUNC6 (init != error_mark_node && type != error_mark_node);
  FUNC6 (FUNC3 ());

  /* Use a function returning the desired type to initialize EXP for us.
     If the function is a constructor, and its first argument is
     NULL_TREE, know that it was meant for us--just slide exp on
     in and expand the constructor.  Constructors now come
     as TARGET_EXPRs.  */

  if (init && FUNC1 (exp) == VAR_DECL
      && FUNC0 (init))
    {
      /* If store_init_value returns NULL_TREE, the INIT has been
	 recorded as the DECL_INITIAL for EXP.  That means there's
	 nothing more we have to do.  */
      init = FUNC7 (exp, init);
      if (init)
	FUNC5 (init);
      return;
    }

  /* We know that expand_default_init can handle everything we want
     at this point.  */
  FUNC4 (binfo, true_exp, exp, init, flags);
}