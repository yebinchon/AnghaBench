
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROP_cfg ;
 int PROP_ssa ;
 int PROP_trees ;
 int TDF_BLOCKS ;
 int TDF_GRAPH ;
 int TDF_SLIM ;
 unsigned int TODO_cleanup_cfg ;
 unsigned int TODO_dump_cgraph ;
 unsigned int TODO_dump_func ;
 unsigned int TODO_ggc_collect ;
 unsigned int TODO_remove_unused_locals ;
 unsigned int TODO_update_smt_usage ;
 unsigned int TODO_update_ssa ;
 unsigned int TODO_update_ssa_any ;
 unsigned int TODO_verify_all ;
 unsigned int TODO_verify_flow ;
 unsigned int TODO_verify_loops ;
 unsigned int TODO_verify_ssa ;
 unsigned int TODO_verify_stmts ;
 int cleanup_tree_cfg () ;
 int cleanup_tree_cfg_loop () ;
 int curr_properties ;
 scalar_t__ current_function_decl ;
 scalar_t__ current_loops ;
 int dump_cgraph (scalar_t__) ;
 scalar_t__ dump_file ;
 int dump_file_name ;
 int dump_flags ;
 int dump_function_to_file (scalar_t__,scalar_t__,int) ;
 int fflush (scalar_t__) ;
 int gcc_assert (unsigned int) ;
 int get_insns () ;
 int ggc_collect () ;
 scalar_t__ graph_dump_format ;
 unsigned int last_verified ;
 scalar_t__ need_ssa_update_p () ;
 scalar_t__ no_graph ;
 int print_rtl (scalar_t__,int ) ;
 int print_rtl_graph_with_bb (int ,int ) ;
 int print_rtl_slim_with_bb (scalar_t__,int ,int) ;
 int print_rtl_with_bb (scalar_t__,int ) ;
 int recalculate_used_alone () ;
 int remove_unused_locals () ;
 int update_ssa (unsigned int) ;
 int updating_used_alone ;
 int verify_flow_info () ;
 int verify_loop_closed_ssa () ;
 int verify_ssa (int) ;
 int verify_stmts () ;

__attribute__((used)) static void
execute_todo (unsigned int flags)
{





  if (curr_properties & PROP_ssa)
    flags |= TODO_verify_ssa;
  flags &= ~last_verified;
  if (!flags)
    return;


  if (flags & TODO_update_smt_usage)
    recalculate_used_alone ();


  if (flags & TODO_cleanup_cfg)
    {

      updating_used_alone = 1;

      if (current_loops)
 cleanup_tree_cfg_loop ();
      else
 cleanup_tree_cfg ();


      recalculate_used_alone ();







      if (!(flags & TODO_update_ssa_any) && need_ssa_update_p ())
 flags |= TODO_update_ssa;
    }

  if (flags & TODO_update_ssa_any)
    {
      unsigned update_flags = flags & TODO_update_ssa_any;
      update_ssa (update_flags);
      last_verified &= ~TODO_verify_ssa;
    }

  if (flags & TODO_remove_unused_locals)
    remove_unused_locals ();

  if ((flags & TODO_dump_func)
      && dump_file && current_function_decl)
    {
      if (curr_properties & PROP_trees)
        dump_function_to_file (current_function_decl,
                               dump_file, dump_flags);
      else
 {
   if (dump_flags & TDF_SLIM)
     print_rtl_slim_with_bb (dump_file, get_insns (), dump_flags);
   else if ((curr_properties & PROP_cfg) && (dump_flags & TDF_BLOCKS))
     print_rtl_with_bb (dump_file, get_insns ());
          else
     print_rtl (dump_file, get_insns ());

   if (curr_properties & PROP_cfg
       && graph_dump_format != no_graph
       && (dump_flags & TDF_GRAPH))
     print_rtl_graph_with_bb (dump_file_name, get_insns ());
 }



      fflush (dump_file);
    }
  if ((flags & TODO_dump_cgraph)
      && dump_file && !current_function_decl)
    {
      dump_cgraph (dump_file);


      fflush (dump_file);
    }

  if (flags & TODO_ggc_collect)
    {
      ggc_collect ();
    }
  last_verified = flags & TODO_verify_all;
}
