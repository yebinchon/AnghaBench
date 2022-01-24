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
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RID_EXTERN ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  in_system_header ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 scalar_t__* ridpointers ; 

void
FUNC15 (tree decl, tree storage)
{
  tree result = NULL_TREE;
  int extern_p = 0;

  if (!decl || decl == error_mark_node)
    /* An error occurred, for which grokdeclarator has already issued
       an appropriate message.  */
    return;
  else if (! FUNC3 (decl))
    {
      FUNC10 ("explicit instantiation of non-template %q#D", decl);
      return;
    }
  else if (FUNC8 (decl) == VAR_DECL)
    {
      /* There is an asymmetry here in the way VAR_DECLs and
	 FUNCTION_DECLs are handled by grokdeclarator.  In the case of
	 the latter, the DECL we get back will be marked as a
	 template instantiation, and the appropriate
	 DECL_TEMPLATE_INFO will be set up.  This does not happen for
	 VAR_DECLs so we do the lookup here.  Probably, grokdeclarator
	 should handle VAR_DECLs as it currently handles
	 FUNCTION_DECLs.  */
      result = FUNC12 (FUNC0 (decl), FUNC4 (decl), 0, false);
      if (!result || FUNC8 (result) != VAR_DECL)
	{
	  FUNC10 ("no matching template for %qD found", decl);
	  return;
	}
    }
  else if (FUNC8 (decl) != FUNCTION_DECL)
    {
      FUNC10 ("explicit instantiation of %q#D", decl);
      return;
    }
  else
    result = decl;

  /* Check for various error cases.  Note that if the explicit
     instantiation is valid the RESULT will currently be marked as an
     *implicit* instantiation; DECL_EXPLICIT_INSTANTIATION is not set
     until we get here.  */

  if (FUNC7 (result))
    {
      /* DR 259 [temp.spec].

	 Both an explicit instantiation and a declaration of an explicit
	 specialization shall not appear in a program unless the explicit
	 instantiation follows a declaration of the explicit specialization.

	 For a given set of template parameters, if an explicit
	 instantiation of a template appears after a declaration of an
	 explicit specialization for that template, the explicit
	 instantiation has no effect.  */
      return;
    }
  else if (FUNC1 (result))
    {
      /* [temp.spec]

	 No program shall explicitly instantiate any template more
	 than once.

	 We check DECL_NOT_REALLY_EXTERN so as not to complain when
	 the first instantiation was `extern' and the second is not,
	 and EXTERN_P for the opposite case.  */
      if (FUNC5 (result) && !extern_p)
	FUNC14 ("duplicate explicit instantiation of %q#D", result);
      /* If an "extern" explicit instantiation follows an ordinary
	 explicit instantiation, the template is instantiated.  */
      if (extern_p)
	return;
    }
  else if (!FUNC2 (result))
    {
      FUNC10 ("no matching template for %qD found", result);
      return;
    }
  else if (!FUNC6 (result))
    {
      FUNC14 ("explicit instantiation of non-template %q#D", result);
      return;
    }

  if (storage == NULL_TREE)
    ;
  else if (storage == ridpointers[(int) RID_EXTERN])
    {
      if (pedantic && !in_system_header)
	FUNC14 ("ISO C++ forbids the use of %<extern%> on explicit "
		 "instantiations");
      extern_p = 1;
    }
  else
    FUNC10 ("storage class %qD applied to template instantiation", storage);

  FUNC9 (result);
  FUNC13 (result, extern_p);
  if (! extern_p)
    FUNC11 (result, /*defer_ok=*/1,
		      /*expl_inst_class_mem_p=*/false);
}