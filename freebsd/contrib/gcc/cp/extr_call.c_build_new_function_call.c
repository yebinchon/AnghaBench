
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
struct z_candidate {int fn; int next; } ;


 int DECL_NAME (int ) ;
 int LOOKUP_NORMAL ;
 int OVL_CURRENT (char*) ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_OPERAND (char*,int ) ;
 char* build_function_call (int ,char*) ;
 char* build_over_call (struct z_candidate*,int ) ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 int error (char*,int ,char*) ;
 char* error_mark_node ;
 int obstack_free (int *,void*) ;
 struct z_candidate* perform_overload_resolution (char*,char*,struct z_candidate**,int*) ;
 int print_z_candidates (struct z_candidate*) ;
 char* remove_hidden_names (char*) ;
 char* resolve_args (char*) ;

tree
build_new_function_call (tree fn, tree args, bool koenig_p)
{
  struct z_candidate *candidates, *cand;
  bool any_viable_p;
  void *p;
  tree result;

  args = resolve_args (args);
  if (args == error_mark_node)
    return error_mark_node;




  if (!koenig_p)
    {
      tree orig_fn = fn;

      fn = remove_hidden_names (fn);
      if (!fn)
 {
   error ("no matching function for call to %<%D(%A)%>",
   DECL_NAME (OVL_CURRENT (orig_fn)), args);
   return error_mark_node;
 }
    }


  p = conversion_obstack_alloc (0);

  cand = perform_overload_resolution (fn, args, &candidates, &any_viable_p);

  if (!cand)
    {
      if (!any_viable_p && candidates && ! candidates->next)
 return build_function_call (candidates->fn, args);
      if (TREE_CODE (fn) == TEMPLATE_ID_EXPR)
 fn = TREE_OPERAND (fn, 0);
      if (!any_viable_p)
 error ("no matching function for call to %<%D(%A)%>",
        DECL_NAME (OVL_CURRENT (fn)), args);
      else
 error ("call of overloaded %<%D(%A)%> is ambiguous",
        DECL_NAME (OVL_CURRENT (fn)), args);
      if (candidates)
 print_z_candidates (candidates);
      result = error_mark_node;
    }
  else
    result = build_over_call (cand, LOOKUP_NORMAL);


  obstack_free (&conversion_obstack, p);

  return result;
}
