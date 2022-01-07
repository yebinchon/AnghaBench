
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int fclose (int *) ;
 int * procfs_file ;

__attribute__((used)) static void
set_procfs_file_cmd (char *args, int from_tty, struct cmd_list_element *c)
{


  if (procfs_file)
    fclose (procfs_file);
  procfs_file = ((void*)0);
}
