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
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

void
FUNC10 (tree decl)
{
  /* The standard says:

      [temp.names]

      If a name prefixed by the keyword template is not a member
      template, the program is ill-formed.

     DR 228 removed the restriction that the template be a member
     template.

     DR 96, if accepted would add the further restriction that explicit
     template arguments must be provided if the template keyword is
     used, but, as of 2005-10-16, that DR is still in "drafting".  If
     this DR is accepted, then the semantic checks here can be
     simplified, as the entity named must in fact be a template
     specialization, rather than, as at present, a set of overloaded
     functions containing at least one template function.  */
  if (FUNC7 (decl) != TEMPLATE_DECL
      && FUNC7 (decl) != TEMPLATE_ID_EXPR)
    {
      if (!FUNC8 (decl))
	FUNC9 ("%qD is not a template", decl);
      else
	{
	  tree fns;
	  fns = decl;
	  if (FUNC1 (fns))
	    fns = FUNC0 (fns);
	  while (fns)
	    {
	      tree fn = FUNC4 (fns);
	      if (FUNC7 (fn) == TEMPLATE_DECL
		  || FUNC7 (fn) == TEMPLATE_ID_EXPR)
		break;
	      if (FUNC7 (fn) == FUNCTION_DECL
		  && FUNC3 (fn)
		  && FUNC6 (FUNC2 (fn)))
		break;
	      fns = FUNC5 (fns);
	    }
	  if (!fns)
	    FUNC9 ("%qD is not a template", decl);
	}
    }
}