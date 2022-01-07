
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int PROP_DEATH_NOTES ;
 int UPDATE_LIFE_GLOBAL_RM_NOTES ;
 int cleanup_cfg (int ) ;
 int delete_trivially_dead_insns (int ,int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int no_new_pseudos ;
 int reg_scan (int ,int ) ;
 int see_main () ;
 int update_life_info_in_dirty_blocks (int ,int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_see (void)
{
  int no_new_pseudos_bcp = no_new_pseudos;

  no_new_pseudos = 0;
  see_main ();
  no_new_pseudos = no_new_pseudos_bcp;

  delete_trivially_dead_insns (get_insns (), max_reg_num ());
  update_life_info_in_dirty_blocks (UPDATE_LIFE_GLOBAL_RM_NOTES,
          (PROP_DEATH_NOTES));
  cleanup_cfg (CLEANUP_EXPENSIVE);
  reg_scan (get_insns (), max_reg_num ());

  return 0;
}
