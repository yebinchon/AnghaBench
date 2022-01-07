
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_VPTR_INDEX (scalar_t__) ;
 int COND_EXPR ;
 int EQ_EXPR ;
 int NOP_EXPR ;
 int PLUS_EXPR ;
 int TREE_TYPE (scalar_t__) ;
 int boolean_type_node ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ build3 (int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,int *) ;
 int build_modify_expr (scalar_t__,int ,scalar_t__) ;
 scalar_t__ build_vfield_ref (scalar_t__,int ) ;
 scalar_t__ build_vtbl_address (scalar_t__) ;
 scalar_t__ convert (int ,scalar_t__) ;
 scalar_t__ convert_force (int ,scalar_t__,int ) ;
 scalar_t__ current_in_charge_parm ;
 scalar_t__ current_vtt_parm ;
 scalar_t__ error_mark_node ;
 int finish_expr_stmt (int ) ;
 int gcc_assert (int) ;
 scalar_t__ integer_zero_node ;

__attribute__((used)) static void
expand_virtual_init (tree binfo, tree decl)
{
  tree vtbl, vtbl_ptr;
  tree vtt_index;


  vtbl = build_vtbl_address (binfo);



  vtt_index = BINFO_VPTR_INDEX (binfo);
  if (vtt_index)
    {
      tree vtbl2;
      tree vtt_parm;


      vtt_parm = current_vtt_parm;
      vtbl2 = build2 (PLUS_EXPR,
        TREE_TYPE (vtt_parm),
        vtt_parm,
        vtt_index);
      vtbl2 = build_indirect_ref (vtbl2, ((void*)0));
      vtbl2 = convert (TREE_TYPE (vtbl), vtbl2);




      vtbl = build3 (COND_EXPR,
       TREE_TYPE (vtbl),
       build2 (EQ_EXPR, boolean_type_node,
        current_in_charge_parm, integer_zero_node),
       vtbl2,
       vtbl);
    }


  vtbl_ptr = build_vfield_ref (build_indirect_ref (decl, ((void*)0)),
          TREE_TYPE (binfo));
  gcc_assert (vtbl_ptr != error_mark_node);


  vtbl = convert_force (TREE_TYPE (vtbl_ptr), vtbl, 0);
  finish_expr_stmt (build_modify_expr (vtbl_ptr, NOP_EXPR, vtbl));
}
