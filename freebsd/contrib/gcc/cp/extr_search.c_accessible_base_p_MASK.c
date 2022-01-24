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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC7 (tree t, tree base, bool consider_local_p)
{
  tree decl;

  /* [class.access.base]

     A base class is said to be accessible if an invented public
     member of the base class is accessible.

     If BASE is a non-proper base, this condition is trivially
     true.  */
  if (FUNC6 (t, base))
    return true;
  /* Rather than inventing a public member, we use the implicit
     public typedef created in the scope of every class.  */
  decl = FUNC4 (base);
  while (!FUNC1 (decl))
    decl = FUNC2 (decl);
  while (FUNC0 (t))
    t = FUNC3 (t);
  return FUNC5 (t, decl, consider_local_p);
}