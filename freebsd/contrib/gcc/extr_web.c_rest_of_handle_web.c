
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int cleanup_cfg (int ) ;
 int delete_trivially_dead_insns (int ,int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int reg_scan (int ,int ) ;
 int web_main () ;

__attribute__((used)) static unsigned int
rest_of_handle_web (void)
{
  web_main ();
  delete_trivially_dead_insns (get_insns (), max_reg_num ());
  cleanup_cfg (CLEANUP_EXPENSIVE);
  reg_scan (get_insns (), max_reg_num ());
  return 0;
}
