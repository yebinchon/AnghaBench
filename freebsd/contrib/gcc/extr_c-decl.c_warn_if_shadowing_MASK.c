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
struct c_binding {scalar_t__ decl; int /*<<< orphan*/  invisible; struct c_binding* shadowed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 struct c_binding* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_Wshadow ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  warn_shadow ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (tree new_decl)
{
  struct c_binding *b;

  /* Shadow warnings wanted?  */
  if (!warn_shadow
      /* No shadow warnings for internally generated vars.  */
      || FUNC3 (new_decl)
      /* No shadow warnings for vars made for inlining.  */
      || FUNC2 (new_decl))
    return;

  /* Is anything being shadowed?  Invisible decls do not count.  */
  for (b = FUNC5 (FUNC4 (new_decl)); b; b = b->shadowed)
    if (b->decl && b->decl != new_decl && !b->invisible)
      {
	tree old_decl = b->decl;

	if (old_decl == error_mark_node)
	  {
	    FUNC7 (OPT_Wshadow, "declaration of %q+D shadows previous "
		     "non-variable", new_decl);
	    break;
	  }
	else if (FUNC6 (old_decl) == PARM_DECL)
	  FUNC7 (OPT_Wshadow, "declaration of %q+D shadows a parameter",
		   new_decl);
	else if (FUNC1 (old_decl))
	  FUNC7 (OPT_Wshadow, "declaration of %q+D shadows a global "
		   "declaration", new_decl);
	else if (FUNC6 (old_decl) == FUNCTION_DECL
		 && FUNC0 (old_decl))
	  {
	    FUNC7 (OPT_Wshadow, "declaration of %q+D shadows "
		     "a built-in function", new_decl);
	    break;
	  }
	else
	  FUNC7 (OPT_Wshadow, "declaration of %q+D shadows a previous local",
		   new_decl);

	FUNC7 (OPT_Wshadow, "%Jshadowed declaration is here", old_decl);

	break;
      }
}