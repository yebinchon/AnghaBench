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
 scalar_t__ FUNC0 (scalar_t__,unsigned int) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wctor_dtor_privacy ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 scalar_t__ access_private_node ; 
 int /*<<< orphan*/  warn_ctor_dtor_privacy ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC23 (tree t)
{
  int has_member_fn = 0;
  int has_nonprivate_method = 0;
  tree fn;

  if (!warn_ctor_dtor_privacy
      /* If the class has friends, those entities might create and
	 access instances, so we should not warn.  */
      || (FUNC4 (t)
	  || FUNC11 (FUNC20 (t)))
      /* We will have warned when the template was declared; there's
	 no need to warn on every instantiation.  */
      || FUNC7 (t))
    /* There's no reason to even consider warning about this
       class.  */
    return;

  /* We only issue one warning, if more than one applies, because
     otherwise, on code like:

     class A {
       // Oops - forgot `public:'
       A();
       A(const A&);
       ~A();
     };

     we warn several times about essentially the same problem.  */

  /* Check to see if all (non-constructor, non-destructor) member
     functions are private.  (Since there are no friends or
     non-private statics, we can't ever call any of the private member
     functions.)  */
  for (fn = FUNC21 (t); fn; fn = FUNC15 (fn))
    /* We're not interested in compiler-generated methods; they don't
       provide any way to call private members.  */
    if (!FUNC8 (fn))
      {
	if (!FUNC16 (fn))
	  {
	    if (FUNC12 (fn))
	      /* A non-private static member function is just like a
		 friend; it can create and invoke private member
		 functions, and be accessed without a class
		 instance.  */
	      return;

	    has_nonprivate_method = 1;
	    /* Keep searching for a static member function.  */
	  }
	else if (!FUNC9 (fn) && !FUNC10 (fn))
	  has_member_fn = 1;
      }

  if (!has_nonprivate_method && has_member_fn)
    {
      /* There are no non-private methods, and there's at least one
	 private member function that isn't a constructor or
	 destructor.  (If all the private members are
	 constructors/destructors we want to use the code below that
	 issues error messages specifically referring to
	 constructors/destructors.)  */
      unsigned i;
      tree binfo = FUNC17 (t);

      for (i = 0; i != FUNC1 (binfo); i++)
	if (FUNC0 (binfo, i) != access_private_node)
	  {
	    has_nonprivate_method = 1;
	    break;
	  }
      if (!has_nonprivate_method)
	{
	  FUNC22 (OPT_Wctor_dtor_privacy,
		   "all member functions in class %qT are private", t);
	  return;
	}
    }

  /* Even if some of the member functions are non-private, the class
     won't be useful for much if all the constructors or destructors
     are private: such an object can never be created or destroyed.  */
  fn = FUNC3 (t);
  if (fn && FUNC16 (fn))
    {
      FUNC22 (OPT_Wctor_dtor_privacy,
	       "%q#T only defines a private destructor and has no friends",
	       t);
      return;
    }

  if (FUNC18 (t)
      /* Implicitly generated constructors are always public.  */
      && (!FUNC6 (t)
	  || !FUNC5 (t)))
    {
      int nonprivate_ctor = 0;

      /* If a non-template class does not define a copy
	 constructor, one is defined for it, enabling it to avoid
	 this warning.  For a template class, this does not
	 happen, and so we would normally get a warning on:

	   template <class T> class C { private: C(); };

	 To avoid this asymmetry, we check TYPE_HAS_INIT_REF.  All
	 complete non-template or fully instantiated classes have this
	 flag set.  */
      if (!FUNC19 (t))
	nonprivate_ctor = 1;
      else
	for (fn = FUNC2 (t); fn; fn = FUNC14 (fn))
	  {
	    tree ctor = FUNC13 (fn);
	    /* Ideally, we wouldn't count copy constructors (or, in
	       fact, any constructor that takes an argument of the
	       class type as a parameter) because such things cannot
	       be used to construct an instance of the class unless
	       you already have one.  But, for now at least, we're
	       more generous.  */
	    if (! FUNC16 (ctor))
	      {
		nonprivate_ctor = 1;
		break;
	      }
	  }

      if (nonprivate_ctor == 0)
	{
	  FUNC22 (OPT_Wctor_dtor_privacy,
		   "%q#T only defines private constructors and has no friends",
		   t);
	  return;
	}
    }
}