
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_cmd (char*,int ,int ,char*,struct cmd_list_element**) ;
 int add_prefix_cmd (char*,int ,int ,char*,struct cmd_list_element**,char*,int ,struct cmd_list_element**) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int bdm_command ;
 int bdm_reset_command ;
 int bdm_restart_command ;
 int bdm_update_flash_command ;
 int class_obscure ;
 int no_class ;
 int remote_timeout ;
 int setlist ;
 int showlist ;
 int var_integer ;

void
_initialize_remote_ocd (void)
{
  extern struct cmd_list_element *cmdlist;
  static struct cmd_list_element *ocd_cmd_list = ((void*)0);

  add_show_from_set (add_set_cmd ("remotetimeout", no_class,
      var_integer, (char *) &remote_timeout,
     "Set timeout value for remote read.\n", &setlist),
       &showlist);

  add_prefix_cmd ("ocd", class_obscure, bdm_command, "", &ocd_cmd_list, "ocd ",
    0, &cmdlist);

  add_cmd ("reset", class_obscure, bdm_reset_command, "", &ocd_cmd_list);
  add_cmd ("restart", class_obscure, bdm_restart_command, "", &ocd_cmd_list);
  add_cmd ("update-flash", class_obscure, bdm_update_flash_command, "", &ocd_cmd_list);
}
