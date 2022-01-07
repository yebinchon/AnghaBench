
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 int CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 int TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_HAS_NONTRIVIAL_DESTRUCTOR (scalar_t__) ;
 int VEC_DELETE_EXPR ;
 int ansi_opname (int ) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int ) ;
 scalar_t__ lookup_fnfields (int ,int ,int ) ;
 scalar_t__ same_type_p (int ,int ) ;
 int sizetype ;
 scalar_t__ void_list_node ;

__attribute__((used)) static bool
type_requires_array_cookie (tree type)
{
  tree fns;
  bool has_two_argument_delete_p = 0;

  gcc_assert (CLASS_TYPE_P (type));




  if (TYPE_HAS_NONTRIVIAL_DESTRUCTOR (type))
    return 1;





  fns = lookup_fnfields (TYPE_BINFO (type),
    ansi_opname (VEC_DELETE_EXPR),
                0);


  if (!fns || fns == error_mark_node)
    return 0;

  for (fns = BASELINK_FUNCTIONS (fns); fns; fns = OVL_NEXT (fns))
    {
      tree fn;
      tree second_parm;


      fn = OVL_CURRENT (fns);


      second_parm = TREE_CHAIN (TYPE_ARG_TYPES (TREE_TYPE (fn)));
      if (second_parm == void_list_node)
 return 0;



      if (TREE_CHAIN (second_parm) == void_list_node
   && same_type_p (TREE_VALUE (second_parm), sizetype))
 has_two_argument_delete_p = 1;
    }

  return has_two_argument_delete_p;
}
