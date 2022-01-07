
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_UPDATE_LIFE ;
 int TV_JUMP ;
 int cleanup_cfg (int) ;
 int combine_instructions (int ,int ) ;
 int delete_dead_jumptables () ;
 int get_insns () ;
 int max_reg_num () ;
 int rebuild_jump_labels (int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_combine (void)
{
  int rebuild_jump_labels_after_combine
    = combine_instructions (get_insns (), max_reg_num ());




  if (rebuild_jump_labels_after_combine)
    {
      timevar_push (TV_JUMP);
      rebuild_jump_labels (get_insns ());
      timevar_pop (TV_JUMP);

      delete_dead_jumptables ();
      cleanup_cfg (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE);
    }
  return 0;
}
