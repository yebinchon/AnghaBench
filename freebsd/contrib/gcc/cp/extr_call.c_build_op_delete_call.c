
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int name; } ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ COMPLETE_TYPE_P (int ) ;
 scalar_t__ DECL_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 int TYPE_BINFO (scalar_t__) ;
 scalar_t__ ansi_opname (int) ;
 scalar_t__ build_cxx_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_function_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 int complete_type (scalar_t__) ;
 scalar_t__ cp_convert (int ,scalar_t__) ;
 int error (char*,int ,scalar_t__) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ lookup_fnfields (int ,scalar_t__,int) ;
 scalar_t__ lookup_name_nonclass (scalar_t__) ;
 int mark_used (scalar_t__) ;
 TYPE_1__* operator_name_info ;
 int perform_or_defer_access_check (int ,scalar_t__,scalar_t__) ;
 int ptr_type_node ;
 scalar_t__ same_type_p (int ,int ) ;
 int sizetype ;
 scalar_t__ strip_array_types (scalar_t__) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ void_list_node ;
 int warning (int ,char*,scalar_t__) ;

tree
build_op_delete_call (enum tree_code code, tree addr, tree size,
        bool global_p, tree placement,
        tree alloc_fn)
{
  tree fn = NULL_TREE;
  tree fns, fnname, argtypes, args, type;
  int pass;

  if (addr == error_mark_node)
    return error_mark_node;

  type = strip_array_types (TREE_TYPE (TREE_TYPE (addr)));

  fnname = ansi_opname (code);

  if (CLASS_TYPE_P (type)
      && COMPLETE_TYPE_P (complete_type (type))
      && !global_p)







    {
      fns = lookup_fnfields (TYPE_BINFO (type), fnname, 1);
      if (fns == error_mark_node)
 return error_mark_node;
    }
  else
    fns = NULL_TREE;

  if (fns == NULL_TREE)
    fns = lookup_name_nonclass (fnname);

  if (placement)
    {


      gcc_assert (alloc_fn != NULL_TREE);
      argtypes = TREE_CHAIN (TYPE_ARG_TYPES (TREE_TYPE (alloc_fn)));

      args = TREE_CHAIN (TREE_OPERAND (placement, 1));
    }
  else
    {

      argtypes = void_list_node;
      args = NULL_TREE;
    }


  addr = cp_convert (ptr_type_node, addr);





  for (pass = 0; pass < (placement ? 1 : 2); ++pass)
    {


      for (fn = BASELINK_P (fns) ? BASELINK_FUNCTIONS (fns) : fns;
    fn;
    fn = OVL_NEXT (fn))
 {
   tree t;


   t = TYPE_ARG_TYPES (TREE_TYPE (OVL_CURRENT (fn)));
   if (!same_type_p (TREE_VALUE (t), ptr_type_node))
     continue;
   t = TREE_CHAIN (t);

   if (pass == 0)
     {
       tree a = argtypes;
       while (a && t)
  {
    if (!same_type_p (TREE_VALUE (a), TREE_VALUE (t)))
      break;
    a = TREE_CHAIN (a);
    t = TREE_CHAIN (t);
  }
       if (!a && !t)
  break;
     }


   else if (pass == 1



     && t
     && same_type_p (TREE_VALUE (t), sizetype)
     && TREE_CHAIN (t) == void_list_node)
     break;
 }


      if (fn)
 break;
    }


  if (fn)
    {


      fn = OVL_CURRENT (fn);



      if (DECL_CLASS_SCOPE_P (fn))
 perform_or_defer_access_check (TYPE_BINFO (type), fn, fn);

      if (pass == 0)
 args = tree_cons (NULL_TREE, addr, args);
      else
 args = tree_cons (NULL_TREE, addr,
     build_tree_list (NULL_TREE, size));

      if (placement)
 {


   mark_used (fn);
   return build_cxx_call (fn, args);
 }
      else
 return build_function_call (fn, args);
    }






  if (alloc_fn)
    {
      if (!placement)
 warning (0, "no corresponding deallocation function for `%D'",
   alloc_fn);
      return NULL_TREE;
    }

  error ("no suitable %<operator %s%> for %qT",
  operator_name_info[(int)code].name, type);
  return error_mark_node;
}
