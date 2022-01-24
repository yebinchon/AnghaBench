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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int
FUNC10 (const tree decl, tree* const template_info)
{
  if (FUNC7 (decl) == TYPE_DECL)
    {
      /* TYPE_DECLs are handled specially.  Look at its type to decide
	 if this is a template instantiation.  */
      const tree type = FUNC8 (decl);

      if (FUNC1 (type) && FUNC0 (type))
	{
	  if (template_info != NULL)
	    /* For a templated TYPE_DECL, the template info is hanging
	       off the type.  */
	    *template_info = FUNC9 (type);
	  return 1;
	}
    }
  else
    {
      /* Check if this is a primary template.  */
      if (FUNC2 (decl) != NULL
	  && FUNC5 (decl)
	  && FUNC6 (FUNC4 (decl))
	  && FUNC7 (decl) != TEMPLATE_DECL)
	{
	  if (template_info != NULL)
	    /* For most templated decls, the template info is hanging
	       off the decl.  */
	    *template_info = FUNC3 (decl);
	  return 1;
	}
    }

  /* It's not a template id.  */
  return 0;
}