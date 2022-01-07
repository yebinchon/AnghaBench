
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int alpha_gdbarch_init ;
 int bfd_arch_alpha ;
 int class_support ;
 int gdbarch_register (int ,int ,int *) ;
 int heuristic_fence_post ;
 int reinit_frame_cache_sfunc ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int setlist ;
 int showlist ;
 int var_zinteger ;

void
_initialize_alpha_tdep (void)
{
  struct cmd_list_element *c;

  gdbarch_register (bfd_arch_alpha, alpha_gdbarch_init, ((void*)0));






  c = add_set_cmd ("heuristic-fence-post", class_support, var_zinteger,
     (char *) &heuristic_fence_post,
     "Set the distance searched for the start of a function.\nIf you are debugging a stripped executable, GDB needs to search through the\nprogram for the start of a function.  This command sets the distance of the\nsearch.  The only need to set it is when debugging a stripped executable.",




     &setlist);


  set_cmd_sfunc (c, reinit_frame_cache_sfunc);
  add_show_from_set (c, &showlist);
}
