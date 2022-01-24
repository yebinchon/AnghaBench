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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ error_mark_node ; 
#define  tcc_binary 129 
#define  tcc_unary 128 

__attribute__((used)) static tree
FUNC8 (tree t)
{
  tree d0, d1;

  if (t == 0 || t == error_mark_node || ! FUNC3 (FUNC7 (t)))
    return 0;

  /* If this is a declaration, return it.  If T is based on a restrict
     qualified decl, return that decl.  */
  if (FUNC2 (t))
    {
      if (FUNC4 (t) == VAR_DECL && FUNC0 (t))
	t = FUNC1 (t);
      return t;
    }

  /* Handle general expressions.  It would be nice to deal with
     COMPONENT_REFs here.  If we could tell that `a' and `b' were the
     same, then `a->f' and `b->f' are also the same.  */
  switch (FUNC5 (FUNC4 (t)))
    {
    case tcc_unary:
      return FUNC8 (FUNC6 (t, 0));

    case tcc_binary:
      /* Return 0 if found in neither or both are the same.  */
      d0 = FUNC8 (FUNC6 (t, 0));
      d1 = FUNC8 (FUNC6 (t, 1));
      if (d0 == d1)
	return d0;
      else if (d0 == 0)
	return d1;
      else if (d1 == 0)
	return d0;
      else
	return 0;

    default:
      return 0;
    }
}