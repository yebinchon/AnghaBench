
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int dummy; } ;
typedef int loop_vec_info ;
typedef int edge ;
typedef int basic_block ;


 struct loop* LOOP_VINFO_LOOP (int ) ;
 int LOOP_VINFO_NITERS (int ) ;
 int TREE_TYPE (scalar_t__) ;
 int add_referenced_var (scalar_t__) ;
 int bsi_insert_on_edge_immediate (int ,scalar_t__) ;
 scalar_t__ create_tmp_var (int ,char*) ;
 scalar_t__ force_gimple_operand (scalar_t__,scalar_t__*,int,scalar_t__) ;
 int gcc_assert (int) ;
 int loop_preheader_edge (struct loop*) ;
 scalar_t__ unshare_expr (int ) ;

__attribute__((used)) static tree
vect_build_loop_niters (loop_vec_info loop_vinfo)
{
  tree ni_name, stmt, var;
  edge pe;
  struct loop *loop = LOOP_VINFO_LOOP (loop_vinfo);
  tree ni = unshare_expr (LOOP_VINFO_NITERS (loop_vinfo));

  var = create_tmp_var (TREE_TYPE (ni), "niters");
  add_referenced_var (var);
  ni_name = force_gimple_operand (ni, &stmt, 0, var);

  pe = loop_preheader_edge (loop);
  if (stmt)
    {
      basic_block new_bb = bsi_insert_on_edge_immediate (pe, stmt);
      gcc_assert (!new_bb);
    }

  return ni_name;
}
