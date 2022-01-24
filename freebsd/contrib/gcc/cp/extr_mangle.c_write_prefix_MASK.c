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
struct TYPE_2__ {int need_abi_warning; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNCTION_DECL ; 
 TYPE_1__ G ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ * const) ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * const global_namespace ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16 (const tree node)
{
  tree decl;
  /* Non-NULL if NODE represents a template-id.  */
  tree template_info = NULL;

  FUNC3 ("prefix", node);

  if (node == NULL
      || node == global_namespace)
    return;

  if (FUNC11 (node))
    return;

  if (FUNC2 (node))
    {
      /* If this is a function decl, that means we've hit function
	 scope, so this prefix must be for a local name.  In this
	 case, we're under the <local-name> production, which encodes
	 the enclosing function scope elsewhere.  So don't continue
	 here.  */
      if (FUNC5 (node) == FUNCTION_DECL)
	return;

      decl = node;
      FUNC10 (decl, &template_info);
    }
  else
    {
      /* Node is a type.  */
      decl = FUNC6 (node);
      if (FUNC0 (node))
	template_info = FUNC7 (node);
    }

  /* In G++ 3.2, the name of the template parameter was used.  */
  if (FUNC5 (node) == TEMPLATE_TYPE_PARM
      && !FUNC8 (2))
    G.need_abi_warning = true;

  if (FUNC5 (node) == TEMPLATE_TYPE_PARM
      && FUNC8 (2))
    FUNC13 (node);
  else if (template_info != NULL)
    /* Templated.  */
    {
      FUNC14 (decl);
      FUNC12 (FUNC4 (template_info));
    }
  else
    /* Not templated.  */
    {
      FUNC16 (FUNC1 (decl));
      FUNC15 (decl);
    }

  FUNC9 (node);
}