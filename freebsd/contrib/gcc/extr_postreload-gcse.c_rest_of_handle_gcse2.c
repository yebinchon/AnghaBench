
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_trivially_dead_insns (int ,int ) ;
 int gcse_after_reload_main (int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int rebuild_jump_labels (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_gcse2 (void)
{
  gcse_after_reload_main (get_insns ());
  rebuild_jump_labels (get_insns ());
  delete_trivially_dead_insns (get_insns (), max_reg_num ());
  return 0;
}
