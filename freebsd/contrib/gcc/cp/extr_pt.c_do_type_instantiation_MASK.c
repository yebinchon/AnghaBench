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
typedef  int tsubst_flags_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RID_EXTERN ; 
 scalar_t__ RID_INLINE ; 
 scalar_t__ RID_STATIC ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  bt_instantiate_type_proc ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (char*,scalar_t__) ; 
 int /*<<< orphan*/  in_system_header ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC20 (char*,scalar_t__) ; 
 scalar_t__* ridpointers ; 
 int tf_error ; 

void
FUNC21 (tree t, tree storage, tsubst_flags_t complain)
{
  int extern_p = 0;
  int nomem_p = 0;
  int static_p = 0;
  int previous_instantiation_extern_p = 0;

  if (FUNC9 (t) == TYPE_DECL)
    t = FUNC10 (t);

  if (! FUNC5 (t) || ! FUNC3 (t))
    {
      FUNC17 ("explicit instantiation of non-template type %qT", t);
      return;
    }

  FUNC16 (t);

  if (!FUNC6 (t))
    {
      if (complain & tf_error)
	FUNC17 ("explicit instantiation of %q#T before definition of template",
	       t);
      return;
    }

  if (storage != NULL_TREE)
    {
      if (pedantic && !in_system_header)
	FUNC20("ISO C++ forbids the use of %qE on explicit instantiations",
		storage);

      if (storage == ridpointers[(int) RID_INLINE])
	nomem_p = 1;
      else if (storage == ridpointers[(int) RID_EXTERN])
	extern_p = 1;
      else if (storage == ridpointers[(int) RID_STATIC])
	static_p = 1;
      else
	{
	  FUNC17 ("storage class %qD applied to template instantiation",
		 storage);
	  extern_p = 0;
	}
    }

  if (FUNC4 (t))
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
  else if (FUNC0 (t))
    {
      /* [temp.spec]

	 No program shall explicitly instantiate any template more
	 than once.

	 If PREVIOUS_INSTANTIATION_EXTERN_P, then the first explicit
	 instantiation was `extern'.  If EXTERN_P then the second is.
	 These cases are OK.  */
      previous_instantiation_extern_p = FUNC1 (t);

      if (!previous_instantiation_extern_p && !extern_p
	  && (complain & tf_error))
	FUNC20 ("duplicate explicit instantiation of %q#T", t);

      /* If we've already instantiated the template, just return now.  */
      if (!FUNC1 (t))
	return;
    }

  FUNC15 (FUNC13 (t));
  FUNC19 (t, extern_p);

  if (nomem_p)
    return;

  {
    tree tmp;

    /* In contrast to implicit instantiation, where only the
       declarations, and not the definitions, of members are
       instantiated, we have here:

	 [temp.explicit]

	 The explicit instantiation of a class template specialization
	 implies the instantiation of all of its members not
	 previously explicitly specialized in the translation unit
	 containing the explicit instantiation.

       Of course, we can't instantiate member template classes, since
       we don't have any arguments for them.  Note that the standard
       is unclear on whether the instantiation of the members are
       *explicit* instantiations or not.  However, the most natural
       interpretation is that it should be an explicit instantiation.  */

    if (! static_p)
      for (tmp = FUNC12 (t); tmp; tmp = FUNC8 (tmp))
	if (FUNC9 (tmp) == FUNCTION_DECL
	    && FUNC7 (tmp))
	  FUNC18 (tmp, extern_p);

    for (tmp = FUNC11 (t); tmp; tmp = FUNC8 (tmp))
      if (FUNC9 (tmp) == VAR_DECL && FUNC7 (tmp))
	FUNC18 (tmp, extern_p);

    if (FUNC2 (t))
      FUNC14 (FUNC2 (t),
			     bt_instantiate_type_proc, &storage);
  }
}