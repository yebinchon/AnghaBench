
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CLEANUP_EXPENSIVE ;
 unsigned int CLEANUP_UPDATE_LIFE ;
 scalar_t__ HAVE_conditional_execution ;
 int PROP_DEATH_NOTES ;
 int TV_TRACER ;
 int UPDATE_LIFE_GLOBAL_RM_NOTES ;
 int cleanup_cfg (unsigned int) ;
 scalar_t__ flag_reorder_blocks ;
 scalar_t__ flag_reorder_blocks_and_partition ;
 scalar_t__ flag_sched2_use_traces ;
 scalar_t__ flag_schedule_insns_after_reload ;
 int insert_section_boundary_note () ;
 int reorder_basic_blocks (unsigned int) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int tracer (unsigned int) ;
 int update_life_info (int *,int ,int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_reorder_blocks (void)
{
  bool changed;
  unsigned int liveness_flags;



  liveness_flags = (!HAVE_conditional_execution ? CLEANUP_UPDATE_LIFE : 0);
  changed = cleanup_cfg (CLEANUP_EXPENSIVE | liveness_flags);

  if (flag_sched2_use_traces && flag_schedule_insns_after_reload)
    {
      timevar_push (TV_TRACER);
      tracer (liveness_flags);
      timevar_pop (TV_TRACER);
    }

  if (flag_reorder_blocks || flag_reorder_blocks_and_partition)
    reorder_basic_blocks (liveness_flags);
  if (flag_reorder_blocks || flag_reorder_blocks_and_partition
      || (flag_sched2_use_traces && flag_schedule_insns_after_reload))
    changed |= cleanup_cfg (CLEANUP_EXPENSIVE | liveness_flags);




  if (changed && HAVE_conditional_execution)
    update_life_info (((void*)0), UPDATE_LIFE_GLOBAL_RM_NOTES,
        PROP_DEATH_NOTES);


  insert_section_boundary_note ();
  return 0;
}
