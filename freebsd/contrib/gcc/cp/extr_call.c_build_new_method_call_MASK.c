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
struct z_candidate {scalar_t__ fn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  CALL_EXPR ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  DEDUCE_CALL ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 int LOOKUP_NONVIRTUAL ; 
 int LOOKUP_ONLYCONVERTING ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ TEMPLATE_ID_EXPR ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__,int) ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC27 (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ base_ctor_identifier ; 
 scalar_t__ base_dtor_identifier ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 scalar_t__ FUNC32 (scalar_t__) ; 
 scalar_t__ FUNC33 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC34 (struct z_candidate*,int) ; 
 scalar_t__ FUNC35 (scalar_t__) ; 
 scalar_t__ FUNC36 (scalar_t__) ; 
 scalar_t__ complete_dtor_identifier ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC37 (int /*<<< orphan*/ ) ; 
 scalar_t__ ctor_identifier ; 
 scalar_t__ current_class_ref ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,scalar_t__) ; 
 scalar_t__ dtor_identifier ; 
 int /*<<< orphan*/  FUNC39 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC40 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC41 (char*) ; 
 int /*<<< orphan*/  FUNC42 (int) ; 
 scalar_t__ FUNC43 (scalar_t__) ; 
 scalar_t__ FUNC44 (scalar_t__) ; 
 char* FUNC45 (scalar_t__,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC47 (struct z_candidate*) ; 
 scalar_t__ processing_template_decl ; 
 scalar_t__ FUNC48 (scalar_t__) ; 
 scalar_t__ FUNC49 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 (scalar_t__,scalar_t__) ; 
 struct z_candidate* FUNC51 (struct z_candidate*,int /*<<< orphan*/ ,int*) ; 
 struct z_candidate* FUNC52 (struct z_candidate*) ; 
 scalar_t__ FUNC53 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ void_type_node ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

tree
FUNC55 (tree instance, tree fns, tree args,
		       tree conversion_path, int flags,
		       tree *fn_p)
{
  struct z_candidate *candidates = 0, *cand;
  tree explicit_targs = NULL_TREE;
  tree basetype = NULL_TREE;
  tree access_binfo;
  tree optype;
  tree mem_args = NULL_TREE, instance_ptr;
  tree name;
  tree user_args;
  tree call;
  tree fn;
  tree class_type;
  int template_only = 0;
  bool any_viable_p;
  tree orig_instance;
  tree orig_fns;
  tree orig_args;
  void *p;

  FUNC42 (instance != NULL_TREE);

  /* We don't know what function we're going to call, yet.  */
  if (fn_p)
    *fn_p = NULL_TREE;

  if (FUNC40 (instance)
      || FUNC40 (fns)
      || args == error_mark_node)
    return error_mark_node;

  if (!FUNC4 (fns))
    {
      FUNC39 ("call to non-function %qD", fns);
      return error_mark_node;
    }

  orig_instance = instance;
  orig_fns = fns;
  orig_args = args;

  /* Dismantle the baselink to collect all the information we need.  */
  if (!conversion_path)
    conversion_path = FUNC1 (fns);
  access_binfo = FUNC0 (fns);
  optype = FUNC3 (fns);
  fns = FUNC2 (fns);
  if (FUNC20 (fns) == TEMPLATE_ID_EXPR)
    {
      explicit_targs = FUNC21 (fns, 1);
      fns = FUNC21 (fns, 0);
      template_only = 1;
    }
  FUNC42 (FUNC20 (fns) == FUNCTION_DECL
	      || FUNC20 (fns) == TEMPLATE_DECL
	      || FUNC20 (fns) == OVERLOAD);
  fn = FUNC43 (fns);
  name = FUNC11 (fn);

  basetype = FUNC24 (FUNC23 (instance));
  FUNC42 (FUNC7 (basetype));

  if (processing_template_decl)
    {
      instance = FUNC32 (instance);
      args = FUNC31 (orig_args);
    }

  /* The USER_ARGS are the arguments we will display to users if an
     error occurs.  The USER_ARGS should not include any
     compiler-generated arguments.  The "this" pointer hasn't been
     added yet.  However, we must remove the VTT pointer if this is a
     call to a base-class constructor or destructor.  */
  user_args = args;
  if (FUNC16 (name))
    {
      /* Callers should explicitly indicate whether they want to construct
	 the complete object or just the part without virtual bases.  */
      FUNC42 (name != ctor_identifier);
      /* Similarly for destructors.  */
      FUNC42 (name != dtor_identifier);
      /* Remove the VTT pointer, if present.  */
      if ((name == base_ctor_identifier || name == base_dtor_identifier)
	  && FUNC6 (basetype))
	user_args = FUNC19 (user_args);
    }

  /* Process the argument list.  */
  args = FUNC48 (args);
  if (args == error_mark_node)
    return error_mark_node;

  instance_ptr = FUNC36 (instance);

  /* It's OK to call destructors on cv-qualified objects.  Therefore,
     convert the INSTANCE_PTR to the unqualified type, if necessary.  */
  if (FUNC10 (fn))
    {
      tree type = FUNC35 (basetype);
      if (!FUNC50 (type, FUNC23 (instance_ptr)))
	instance_ptr = FUNC33 (type, instance_ptr);
      name = complete_dtor_identifier;
    }

  class_type = (conversion_path ? FUNC5 (conversion_path) : NULL_TREE);
  mem_args = FUNC53 (NULL_TREE, instance_ptr, args);

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC37 (0);

  for (fn = fns; fn; fn = FUNC18 (fn))
    {
      tree t = FUNC17 (fn);
      tree this_arglist;

      /* We can end up here for copy-init of same or base class.  */
      if ((flags & LOOKUP_ONLYCONVERTING)
	  && FUNC12 (t))
	continue;

      if (FUNC13 (t))
	this_arglist = mem_args;
      else
	this_arglist = args;

      if (FUNC20 (t) == TEMPLATE_DECL)
	/* A member template.  */
	FUNC27 (&candidates, t,
				class_type,
				explicit_targs,
				this_arglist, optype,
				access_binfo,
				conversion_path,
				flags,
				DEDUCE_CALL);
      else if (! template_only)
	FUNC26 (&candidates, t,
				class_type,
				this_arglist,
				access_binfo,
				conversion_path,
				flags);
    }

  candidates = FUNC51 (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    {
      if (!FUNC8 (basetype))
	FUNC38 (instance_ptr, basetype);
      else
	{
	  char *pretty_name;
	  bool free_p;

	  pretty_name = FUNC45 (name, basetype, &free_p);
	  FUNC39 ("no matching function for call to %<%T::%s(%A)%#V%>",
		 basetype, pretty_name, user_args,
		 FUNC23 (FUNC23 (instance_ptr)));
	  if (free_p)
	    FUNC41 (pretty_name);
	}
      FUNC47 (candidates);
      call = error_mark_node;
    }
  else
    {
      cand = FUNC52 (candidates);
      if (cand == 0)
	{
	  char *pretty_name;
	  bool free_p;

	  pretty_name = FUNC45 (name, basetype, &free_p);
	  FUNC39 ("call of overloaded %<%s(%A)%> is ambiguous", pretty_name,
		 user_args);
	  FUNC47 (candidates);
	  if (free_p)
	    FUNC41 (pretty_name);
	  call = error_mark_node;
	}
      else
	{
	  fn = cand->fn;

	  if (!(flags & LOOKUP_NONVIRTUAL)
	      && FUNC14 (fn)
	      && instance == current_class_ref
	      && (FUNC9 (current_function_decl)
		  || FUNC10 (current_function_decl)))
	    /* This is not an error, it is runtime undefined
	       behavior.  */
	    FUNC54 (0, (FUNC9 (current_function_decl) ?
		      "abstract virtual %q#D called from constructor"
		      : "abstract virtual %q#D called from destructor"),
		     fn);

	  if (FUNC20 (FUNC23 (fn)) == METHOD_TYPE
	      && FUNC44 (instance_ptr))
	    {
	      FUNC39 ("cannot call member function %qD without object",
		     fn);
	      call = error_mark_node;
	    }
	  else
	    {
	      if (FUNC15 (fn) && ! (flags & LOOKUP_NONVIRTUAL)
		  && FUNC49 (instance, 0))
		flags |= LOOKUP_NONVIRTUAL;
	      /* Now we know what function is being called.  */
	      if (fn_p)
		*fn_p = fn;
	      /* Build the actual CALL_EXPR.  */
	      call = FUNC34 (cand, flags);
	      /* In an expression of the form `a->f()' where `f' turns
		 out to be a static member function, `a' is
		 none-the-less evaluated.  */
	      if (FUNC20 (FUNC23 (fn)) != METHOD_TYPE
		  && !FUNC44 (instance_ptr)
		  && FUNC22 (instance_ptr))
		call = FUNC28 (COMPOUND_EXPR, FUNC23 (call),
			       instance_ptr, call);
	      else if (call != error_mark_node
		       && FUNC10 (cand->fn)
		       && !FUNC25 (FUNC23 (call)))
		/* An explicit call of the form "x->~X()" has type
		   "void".  However, on platforms where destructors
		   return "this" (i.e., those where
		   targetm.cxx.cdtor_returns_this is true), such calls
		   will appear to have a return value of pointer type
		   to the low-level call machinery.  We do not want to
		   change the low-level machinery, since we want to be
		   able to optimize "delete f()" on such platforms as
		   "operator delete(~X(f()))" (rather than generating
		   "t = f(), ~X(t), operator delete (t)").  */
		call = FUNC33 (void_type_node, call);
	    }
	}
    }

  if (processing_template_decl && call != error_mark_node)
    call = (FUNC29
	    (CALL_EXPR, call,
	     FUNC30 (COMPONENT_REF, orig_instance, orig_fns, NULL_TREE),
	     orig_args, NULL_TREE));

 /* Free all the conversions we allocated.  */
  FUNC46 (&conversion_obstack, p);

  return call;
}