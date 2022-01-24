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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  current_template_parms ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8 (tree decl)
{
  tree olddecl;

  /* If we're not in a template, we can't possibly shadow a template
     parameter.  */
  if (!current_template_parms)
    return;

  /* Figure out what we're shadowing.  */
  if (FUNC5 (decl) == OVERLOAD)
    decl = FUNC3 (decl);
  olddecl = FUNC7 (FUNC0 (decl));

  /* If there's no previous binding for this name, we're not shadowing
     anything, let alone a template parameter.  */
  if (!olddecl)
    return;

  /* If we're not shadowing a template parameter, we're done.  Note
     that OLDDECL might be an OVERLOAD (or perhaps even an
     ERROR_MARK), so we can't just blithely assume it to be a _DECL
     node.  */
  if (!FUNC1 (olddecl) || !FUNC2 (olddecl))
    return;

  /* We check for decl != olddecl to avoid bogus errors for using a
     name inside a class.  We check TPFI to avoid duplicate errors for
     inline member templates.  */
  if (decl == olddecl
      || FUNC4 (current_template_parms))
    return;

  FUNC6 ("declaration of %q+#D", decl);
  FUNC6 (" shadows template parm %q+#D", olddecl);
}