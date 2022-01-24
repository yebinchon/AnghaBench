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
typedef  int /*<<< orphan*/  unification_kind_t ;
typedef  scalar_t__ tree ;
struct z_candidate {int /*<<< orphan*/  template_decl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct z_candidate* FUNC13 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 struct z_candidate* FUNC14 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  tf_none ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct z_candidate*
FUNC21 (struct z_candidate **candidates, tree tmpl,
			     tree ctype, tree explicit_targs, tree arglist,
			     tree return_type, tree access_path,
			     tree conversion_path, int flags, tree obj,
			     unification_kind_t strict)
{
  int ntparms = FUNC6 (tmpl);
  tree targs = FUNC18 (ntparms);
  tree args_without_in_chrg = arglist;
  struct z_candidate *cand;
  int i;
  tree fn;

  /* We don't do deduction on the in-charge parameter, the VTT
     parameter or 'this'.  */
  if (FUNC5 (tmpl))
    args_without_in_chrg = FUNC10 (args_without_in_chrg);

  if ((FUNC4 (tmpl)
       || FUNC1 (tmpl))
      && FUNC0 (FUNC3 (tmpl)))
    args_without_in_chrg = FUNC10 (args_without_in_chrg);

  i = FUNC15 (tmpl, explicit_targs, targs,
			   args_without_in_chrg,
			   return_type, strict, flags);

  if (i != 0)
    return NULL;

  fn = FUNC16 (tmpl, targs, tf_none);
  if (fn == error_mark_node)
    return NULL;

  /* In [class.copy]:

       A member function template is never instantiated to perform the
       copy of a class object to an object of its class type.

     It's a little unclear what this means; the standard explicitly
     does allow a template to be used to copy a class.  For example,
     in:

       struct A {
	 A(A&);
	 template <class T> A(const T&);
       };
       const A f ();
       void g () { A a (f ()); }

     the member template will be used to make the copy.  The section
     quoted above appears in the paragraph that forbids constructors
     whose only parameter is (a possibly cv-qualified variant of) the
     class type, and a logical interpretation is that the intent was
     to forbid the instantiation of member templates which would then
     have that form.  */
  if (FUNC2 (fn) && FUNC17 (arglist) == 2)
    {
      tree arg_types = FUNC9 (fn);
      if (arg_types && FUNC19 (FUNC12 (FUNC11 (arg_types)),
				    ctype))
	return NULL;
    }

  if (obj != NULL_TREE)
    /* Aha, this is a conversion function.  */
    cand = FUNC13 (candidates, fn, obj, access_path,
			       conversion_path, arglist);
  else
    cand = FUNC14 (candidates, fn, ctype,
				   arglist, access_path,
				   conversion_path, flags);
  if (FUNC8 (fn) != tmpl)
    /* This situation can occur if a member template of a template
       class is specialized.  Then, instantiate_template might return
       an instantiation of the specialization, in which case the
       DECL_TI_TEMPLATE field will point at the original
       specialization.  For example:

	 template <class T> struct S { template <class U> void f(U);
				       template <> void f(int) {}; };
	 S<double> sd;
	 sd.f(3);

       Here, TMPL will be template <class U> S<double>::f(U).
       And, instantiate template will give us the specialization
       template <> S<double>::f(int).  But, the DECL_TI_TEMPLATE field
       for this will point at template <class T> template <> S<T>::f(int),
       so that we can find the definition.  For the purposes of
       overload resolution, however, we want the original TMPL.  */
    cand->template_decl = FUNC20 (tmpl, targs, NULL_TREE);
  else
    cand->template_decl = FUNC7 (fn);

  return cand;
}