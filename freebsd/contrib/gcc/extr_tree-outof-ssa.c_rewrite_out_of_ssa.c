
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var_map ;


 int SSANORM_COALESCE_PARTITIONS ;
 int SSANORM_COMBINE_TEMPS ;
 int SSANORM_PERFORM_TER ;
 int SSA_VAR_MAP_REF_COUNT ;
 int TDF_DETAILS ;
 int create_ssa_var_map (int) ;
 int delete_var_map (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_tree_cfg (scalar_t__,int) ;
 int eliminate_virtual_phis () ;
 int flag_mudflap ;
 scalar_t__ flag_tree_combine_temps ;
 int flag_tree_live_range_split ;
 scalar_t__ flag_tree_ter ;
 int in_ssa_p ;
 int insert_backedge_copies () ;
 int remove_ssa_form (int ,int) ;

__attribute__((used)) static unsigned int
rewrite_out_of_ssa (void)
{
  var_map map;
  int var_flags = 0;
  int ssa_flags = 0;







  insert_backedge_copies ();

  if (!flag_tree_live_range_split)
    ssa_flags |= SSANORM_COALESCE_PARTITIONS;

  eliminate_virtual_phis ();

  if (dump_file && (dump_flags & TDF_DETAILS))
    dump_tree_cfg (dump_file, dump_flags & ~TDF_DETAILS);


  if (flag_tree_ter && !flag_mudflap)
    var_flags = SSA_VAR_MAP_REF_COUNT;

  map = create_ssa_var_map (var_flags);

  if (flag_tree_combine_temps)
    ssa_flags |= SSANORM_COMBINE_TEMPS;
  if (flag_tree_ter && !flag_mudflap)
    ssa_flags |= SSANORM_PERFORM_TER;

  remove_ssa_form (map, ssa_flags);

  if (dump_file && (dump_flags & TDF_DETAILS))
    dump_tree_cfg (dump_file, dump_flags & ~TDF_DETAILS);


  delete_var_map (map);

  in_ssa_p = 0;
  return 0;
}
