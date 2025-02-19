
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct z_candidate {scalar_t__ fn; int * convs; } ;


 int BASELINK_BINFO (scalar_t__) ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BINFO_TYPE (int ) ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ DECL_OVERLOADED_OPERATOR_P (scalar_t__) ;
 int DEDUCE_CALL ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ FUNCTION_TYPE ;
 int LOOKUP_NORMAL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 int add_conv_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int add_function_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int add_template_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 int add_template_conv_candidate (struct z_candidate**,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ansi_opname (scalar_t__) ;
 scalar_t__ build_function_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_over_call (struct z_candidate*,int ) ;
 int build_this (scalar_t__) ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 scalar_t__ convert_from_reference (scalar_t__) ;
 scalar_t__ convert_like_with_context (int ,scalar_t__,scalar_t__,int) ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 scalar_t__ lookup_conversions (scalar_t__) ;
 scalar_t__ lookup_fnfields (scalar_t__,int ,int) ;
 int obstack_free (int *,void*) ;
 int pedantic ;
 int print_z_candidates (struct z_candidate*) ;
 scalar_t__ resolve_args (scalar_t__) ;
 struct z_candidate* splice_viable (struct z_candidate*,int ,int*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 scalar_t__ tree_cons (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static tree
build_object_call (tree obj, tree args)
{
  struct z_candidate *candidates = 0, *cand;
  tree fns, convs, mem_args = NULL_TREE;
  tree type = TREE_TYPE (obj);
  bool any_viable_p;
  tree result = NULL_TREE;
  void *p;

  if (TYPE_PTRMEMFUNC_P (type))
    {


      error ("pointer-to-member function %E cannot be called without an object; consider using .* or ->*", obj);
      return error_mark_node;
    }

  if (TYPE_BINFO (type))
    {
      fns = lookup_fnfields (TYPE_BINFO (type), ansi_opname (CALL_EXPR), 1);
      if (fns == error_mark_node)
 return error_mark_node;
    }
  else
    fns = NULL_TREE;

  args = resolve_args (args);

  if (args == error_mark_node)
    return error_mark_node;


  p = conversion_obstack_alloc (0);

  if (fns)
    {
      tree base = BINFO_TYPE (BASELINK_BINFO (fns));
      mem_args = tree_cons (NULL_TREE, build_this (obj), args);

      for (fns = BASELINK_FUNCTIONS (fns); fns; fns = OVL_NEXT (fns))
 {
   tree fn = OVL_CURRENT (fns);
   if (TREE_CODE (fn) == TEMPLATE_DECL)
     add_template_candidate (&candidates, fn, base, NULL_TREE,
        mem_args, NULL_TREE,
        TYPE_BINFO (type),
        TYPE_BINFO (type),
        LOOKUP_NORMAL, DEDUCE_CALL);
   else
     add_function_candidate
       (&candidates, fn, base, mem_args, TYPE_BINFO (type),
        TYPE_BINFO (type), LOOKUP_NORMAL);
 }
    }

  convs = lookup_conversions (type);

  for (; convs; convs = TREE_CHAIN (convs))
    {
      tree fns = TREE_VALUE (convs);
      tree totype = TREE_TYPE (TREE_TYPE (OVL_CURRENT (fns)));

      if ((TREE_CODE (totype) == POINTER_TYPE
    && TREE_CODE (TREE_TYPE (totype)) == FUNCTION_TYPE)
   || (TREE_CODE (totype) == REFERENCE_TYPE
       && TREE_CODE (TREE_TYPE (totype)) == FUNCTION_TYPE)
   || (TREE_CODE (totype) == REFERENCE_TYPE
       && TREE_CODE (TREE_TYPE (totype)) == POINTER_TYPE
       && TREE_CODE (TREE_TYPE (TREE_TYPE (totype))) == FUNCTION_TYPE))
 for (; fns; fns = OVL_NEXT (fns))
   {
     tree fn = OVL_CURRENT (fns);
     if (TREE_CODE (fn) == TEMPLATE_DECL)
       add_template_conv_candidate
  (&candidates, fn, obj, args, totype,
                   NULL_TREE,
                       NULL_TREE);
     else
       add_conv_candidate (&candidates, fn, obj, args,
                          NULL_TREE,
                      NULL_TREE);
   }
    }

  candidates = splice_viable (candidates, pedantic, &any_viable_p);
  if (!any_viable_p)
    {
      error ("no match for call to %<(%T) (%A)%>", TREE_TYPE (obj), args);
      print_z_candidates (candidates);
      result = error_mark_node;
    }
  else
    {
      cand = tourney (candidates);
      if (cand == 0)
 {
   error ("call of %<(%T) (%A)%> is ambiguous", TREE_TYPE (obj), args);
   print_z_candidates (candidates);
   result = error_mark_node;
 }



      else if (TREE_CODE (cand->fn) == FUNCTION_DECL
        && DECL_OVERLOADED_OPERATOR_P (cand->fn) == CALL_EXPR)
 result = build_over_call (cand, LOOKUP_NORMAL);
      else
 {
   obj = convert_like_with_context (cand->convs[0], obj, cand->fn, -1);
   obj = convert_from_reference (obj);
   result = build_function_call (obj, args);
 }
    }


  obstack_free (&conversion_obstack, p);

  return result;
}
