
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {scalar_t__ fn; } ;


 scalar_t__ BASELINK_ACCESS_BINFO (scalar_t__) ;
 scalar_t__ BASELINK_BINFO (scalar_t__) ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_OPTYPE (scalar_t__) ;
 int BASELINK_P (scalar_t__) ;
 scalar_t__ BINFO_TYPE (scalar_t__) ;
 int CALL_EXPR ;
 scalar_t__ CLASSTYPE_VBASECLASSES (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 int COMPLETE_TYPE_P (scalar_t__) ;
 int COMPONENT_REF ;
 int COMPOUND_EXPR ;
 scalar_t__ DECL_CONSTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_DESTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_NONCONVERTING_P (scalar_t__) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (scalar_t__) ;
 scalar_t__ DECL_PURE_VIRTUAL_P (scalar_t__) ;
 scalar_t__ DECL_VINDEX (scalar_t__) ;
 int DEDUCE_CALL ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ IDENTIFIER_CTOR_OR_DTOR_P (scalar_t__) ;
 int LOOKUP_NONVIRTUAL ;
 int LOOKUP_ONLYCONVERTING ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVERLOAD ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int VOID_TYPE_P (scalar_t__) ;
 int add_function_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int add_template_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ base_ctor_identifier ;
 scalar_t__ base_dtor_identifier ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_min_non_dep (int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int build_min_nt (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_non_dependent_args (scalar_t__) ;
 scalar_t__ build_non_dependent_expr (scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ build_over_call (struct z_candidate*,int) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_this (scalar_t__) ;
 scalar_t__ complete_dtor_identifier ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 scalar_t__ ctor_identifier ;
 scalar_t__ current_class_ref ;
 scalar_t__ current_function_decl ;
 int cxx_incomplete_type_error (scalar_t__,scalar_t__) ;
 scalar_t__ dtor_identifier ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 int free (char*) ;
 int gcc_assert (int) ;
 scalar_t__ get_first_fn (scalar_t__) ;
 scalar_t__ is_dummy_object (scalar_t__) ;
 char* name_as_c_string (scalar_t__,scalar_t__,int*) ;
 int obstack_free (int *,void*) ;
 int pedantic ;
 int print_z_candidates (struct z_candidate*) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ resolve_args (scalar_t__) ;
 scalar_t__ resolves_to_fixed_type_p (scalar_t__,int ) ;
 int same_type_p (scalar_t__,scalar_t__) ;
 struct z_candidate* splice_viable (struct z_candidate*,int ,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ void_type_node ;
 int warning (int ,char*,scalar_t__) ;

tree
build_new_method_call (tree instance, tree fns, tree args,
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

  gcc_assert (instance != NULL_TREE);


  if (fn_p)
    *fn_p = NULL_TREE;

  if (error_operand_p (instance)
      || error_operand_p (fns)
      || args == error_mark_node)
    return error_mark_node;

  if (!BASELINK_P (fns))
    {
      error ("call to non-function %qD", fns);
      return error_mark_node;
    }

  orig_instance = instance;
  orig_fns = fns;
  orig_args = args;


  if (!conversion_path)
    conversion_path = BASELINK_BINFO (fns);
  access_binfo = BASELINK_ACCESS_BINFO (fns);
  optype = BASELINK_OPTYPE (fns);
  fns = BASELINK_FUNCTIONS (fns);
  if (TREE_CODE (fns) == TEMPLATE_ID_EXPR)
    {
      explicit_targs = TREE_OPERAND (fns, 1);
      fns = TREE_OPERAND (fns, 0);
      template_only = 1;
    }
  gcc_assert (TREE_CODE (fns) == FUNCTION_DECL
       || TREE_CODE (fns) == TEMPLATE_DECL
       || TREE_CODE (fns) == OVERLOAD);
  fn = get_first_fn (fns);
  name = DECL_NAME (fn);

  basetype = TYPE_MAIN_VARIANT (TREE_TYPE (instance));
  gcc_assert (CLASS_TYPE_P (basetype));

  if (processing_template_decl)
    {
      instance = build_non_dependent_expr (instance);
      args = build_non_dependent_args (orig_args);
    }






  user_args = args;
  if (IDENTIFIER_CTOR_OR_DTOR_P (name))
    {


      gcc_assert (name != ctor_identifier);

      gcc_assert (name != dtor_identifier);

      if ((name == base_ctor_identifier || name == base_dtor_identifier)
   && CLASSTYPE_VBASECLASSES (basetype))
 user_args = TREE_CHAIN (user_args);
    }


  args = resolve_args (args);
  if (args == error_mark_node)
    return error_mark_node;

  instance_ptr = build_this (instance);



  if (DECL_DESTRUCTOR_P (fn))
    {
      tree type = build_pointer_type (basetype);
      if (!same_type_p (type, TREE_TYPE (instance_ptr)))
 instance_ptr = build_nop (type, instance_ptr);
      name = complete_dtor_identifier;
    }

  class_type = (conversion_path ? BINFO_TYPE (conversion_path) : NULL_TREE);
  mem_args = tree_cons (NULL_TREE, instance_ptr, args);


  p = conversion_obstack_alloc (0);

  for (fn = fns; fn; fn = OVL_NEXT (fn))
    {
      tree t = OVL_CURRENT (fn);
      tree this_arglist;


      if ((flags & LOOKUP_ONLYCONVERTING)
   && DECL_NONCONVERTING_P (t))
 continue;

      if (DECL_NONSTATIC_MEMBER_FUNCTION_P (t))
 this_arglist = mem_args;
      else
 this_arglist = args;

      if (TREE_CODE (t) == TEMPLATE_DECL)

 add_template_candidate (&candidates, t,
    class_type,
    explicit_targs,
    this_arglist, optype,
    access_binfo,
    conversion_path,
    flags,
    DEDUCE_CALL);
      else if (! template_only)
 add_function_candidate (&candidates, t,
    class_type,
    this_arglist,
    access_binfo,
    conversion_path,
    flags);
    }

  candidates = splice_viable (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    {
      if (!COMPLETE_TYPE_P (basetype))
 cxx_incomplete_type_error (instance_ptr, basetype);
      else
 {
   char *pretty_name;
   bool free_p;

   pretty_name = name_as_c_string (name, basetype, &free_p);
   error ("no matching function for call to %<%T::%s(%A)%#V%>",
   basetype, pretty_name, user_args,
   TREE_TYPE (TREE_TYPE (instance_ptr)));
   if (free_p)
     free (pretty_name);
 }
      print_z_candidates (candidates);
      call = error_mark_node;
    }
  else
    {
      cand = tourney (candidates);
      if (cand == 0)
 {
   char *pretty_name;
   bool free_p;

   pretty_name = name_as_c_string (name, basetype, &free_p);
   error ("call of overloaded %<%s(%A)%> is ambiguous", pretty_name,
   user_args);
   print_z_candidates (candidates);
   if (free_p)
     free (pretty_name);
   call = error_mark_node;
 }
      else
 {
   fn = cand->fn;

   if (!(flags & LOOKUP_NONVIRTUAL)
       && DECL_PURE_VIRTUAL_P (fn)
       && instance == current_class_ref
       && (DECL_CONSTRUCTOR_P (current_function_decl)
    || DECL_DESTRUCTOR_P (current_function_decl)))


     warning (0, (DECL_CONSTRUCTOR_P (current_function_decl) ?
        "abstract virtual %q#D called from constructor"
        : "abstract virtual %q#D called from destructor"),
       fn);

   if (TREE_CODE (TREE_TYPE (fn)) == METHOD_TYPE
       && is_dummy_object (instance_ptr))
     {
       error ("cannot call member function %qD without object",
       fn);
       call = error_mark_node;
     }
   else
     {
       if (DECL_VINDEX (fn) && ! (flags & LOOKUP_NONVIRTUAL)
    && resolves_to_fixed_type_p (instance, 0))
  flags |= LOOKUP_NONVIRTUAL;

       if (fn_p)
  *fn_p = fn;

       call = build_over_call (cand, flags);



       if (TREE_CODE (TREE_TYPE (fn)) != METHOD_TYPE
    && !is_dummy_object (instance_ptr)
    && TREE_SIDE_EFFECTS (instance_ptr))
  call = build2 (COMPOUND_EXPR, TREE_TYPE (call),
          instance_ptr, call);
       else if (call != error_mark_node
         && DECL_DESTRUCTOR_P (cand->fn)
         && !VOID_TYPE_P (TREE_TYPE (call)))
  call = build_nop (void_type_node, call);
     }
 }
    }

  if (processing_template_decl && call != error_mark_node)
    call = (build_min_non_dep
     (CALL_EXPR, call,
      build_min_nt (COMPONENT_REF, orig_instance, orig_fns, NULL_TREE),
      orig_args, NULL_TREE));


  obstack_free (&conversion_obstack, p);

  return call;
}
