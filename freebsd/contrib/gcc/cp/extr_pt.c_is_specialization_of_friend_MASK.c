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
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 int FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC20 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 scalar_t__ FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__) ; 
 int FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  tf_none ; 
 scalar_t__ FUNC25 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

bool
FUNC27 (tree decl, tree friend)
{
  bool need_template = true;
  int template_depth;

  FUNC21 (FUNC12 (decl) == FUNCTION_DECL
	      || FUNC12 (decl) == TYPE_DECL);

  /* For [temp.friend/6] when FRIEND is an ordinary member function
     of a template class, we want to check if DECL is a specialization
     if this.  */
  if (FUNC12 (friend) == FUNCTION_DECL
      && FUNC6 (friend)
      && !FUNC9 (friend))
    {
      /* We want a TEMPLATE_DECL for `is_specialization_of'.  */
      friend = FUNC8 (friend);
      need_template = false;
    }
  else if (FUNC12 (friend) == TEMPLATE_DECL
	   && !FUNC10 (friend))
    need_template = false;

  /* There is nothing to do if this is not a template friend.  */
  if (FUNC12 (friend) != TEMPLATE_DECL)
    return false;

  if (FUNC22 (decl, friend))
    return true;

  /* [temp.friend/6]
     A member of a class template may be declared to be a friend of a
     non-template class.  In this case, the corresponding member of
     every specialization of the class template is a friend of the
     class granting friendship.

     For example, given a template friend declaration

       template <class T> friend void A<T>::f();

     the member function below is considered a friend

       template <> struct A<int> {
	 void f();
       };

     For this type of template friend, TEMPLATE_DEPTH below will be
     nonzero.  To determine if DECL is a friend of FRIEND, we first
     check if the enclosing class is a specialization of another.  */

  template_depth = FUNC24 (FUNC3 (friend));
  if (template_depth
      && FUNC2 (decl)
      && FUNC22 (FUNC16 (FUNC3 (decl)),
			       FUNC1 (FUNC3 (friend))))
    {
      /* Next, we check the members themselves.  In order to handle
	 a few tricky cases, such as when FRIEND's are

	   template <class T> friend void A<T>::g(T t);
	   template <class T> template <T t> friend void A<T>::h();

	 and DECL's are

	   void A<int>::g(int);
	   template <int> void A<int>::h();

	 we need to figure out ARGS, the template arguments from
	 the context of DECL.  This is required for template substitution
	 of `T' in the function parameter of `g' and template parameter
	 of `h' in the above examples.  Here ARGS corresponds to `int'.  */

      tree context = FUNC3 (decl);
      tree args = NULL_TREE;
      int current_depth = 0;

      while (current_depth < template_depth)
	{
	  if (FUNC0 (context))
	    {
	      if (current_depth == 0)
		args = FUNC17 (context);
	      else
		args = FUNC18 (FUNC17 (context), args);
	      current_depth++;
	    }
	  context = FUNC15 (context);
	}

      if (FUNC12 (decl) == FUNCTION_DECL)
	{
	  bool is_template;
	  tree friend_type;
	  tree decl_type;
	  tree friend_args_type;
	  tree decl_args_type;

	  /* Make sure that both DECL and FRIEND are templates or
	     non-templates.  */
	  is_template = FUNC6 (decl)
			&& FUNC10 (FUNC8 (decl));
	  if (need_template ^ is_template)
	    return false;
	  else if (is_template)
	    {
	      /* If both are templates, check template parameter list.  */
	      tree friend_parms
		= FUNC26 (FUNC7 (friend),
					 args, tf_none);
	      if (!FUNC19
		     (FUNC7 (FUNC8 (decl)),
		      friend_parms))
		return false;

	      decl_type = FUNC13 (FUNC8 (decl));
	    }
	  else
	    decl_type = FUNC13 (decl);

	  friend_type = FUNC25 (FUNC13 (friend), args,
					      tf_none, NULL_TREE);
	  if (friend_type == error_mark_node)
	    return false;

	  /* Check if return types match.  */
	  if (!FUNC23 (FUNC13 (decl_type), FUNC13 (friend_type)))
	    return false;

	  /* Check if function parameter types match, ignoring the
	     `this' parameter.  */
	  friend_args_type = FUNC14 (friend_type);
	  decl_args_type = FUNC14 (decl_type);
	  if (FUNC5 (friend))
	    friend_args_type = FUNC11 (friend_args_type);
	  if (FUNC5 (decl))
	    decl_args_type = FUNC11 (decl_args_type);

	  return FUNC20 (decl_args_type, friend_args_type);
	}
      else
	{
	  /* DECL is a TYPE_DECL */
	  bool is_template;
	  tree decl_type = FUNC13 (decl);

	  /* Make sure that both DECL and FRIEND are templates or
	     non-templates.  */
	  is_template
	    = FUNC0 (decl_type)
	      && FUNC10 (FUNC1 (decl_type));

	  if (need_template ^ is_template)
	    return false;
	  else if (is_template)
	    {
	      tree friend_parms;
	      /* If both are templates, check the name of the two
		 TEMPLATE_DECL's first because is_friend didn't.  */
	      if (FUNC4 (FUNC1 (decl_type))
		  != FUNC4 (friend))
		return false;

	      /* Now check template parameter list.  */
	      friend_parms
		= FUNC26 (FUNC7 (friend),
					 args, tf_none);
	      return FUNC19
		(FUNC7 (FUNC1 (decl_type)),
		 friend_parms);
	    }
	  else
	    return (FUNC4 (decl)
		    == FUNC4 (friend));
	}
    }
  return false;
}