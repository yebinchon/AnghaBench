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
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6 (tree newdecl, tree olddecl)
{
  tree name;

  if (FUNC4 (newdecl) == TYPE_DECL
      || FUNC4 (newdecl) == TEMPLATE_DECL
      || FUNC4 (newdecl) == CONST_DECL
      || FUNC4 (newdecl) == NAMESPACE_DECL)
    return;

  /* Don't get confused by static member functions; that's a different
     use of `static'.  */
  if (FUNC4 (newdecl) == FUNCTION_DECL
      && FUNC2 (newdecl))
    return;

  /* If the old declaration was `static', or the new one isn't, then
     then everything is OK.  */
  if (FUNC3 (olddecl) || !FUNC3 (newdecl))
    return;

  /* It's OK to declare a builtin function as `static'.  */
  if (FUNC4 (olddecl) == FUNCTION_DECL
      && FUNC0 (olddecl))
    return;

  name = FUNC1 (newdecl);
  FUNC5 ("%qD was declared %<extern%> and later %<static%>", newdecl);
  FUNC5 ("previous declaration of %q+D", olddecl);
}