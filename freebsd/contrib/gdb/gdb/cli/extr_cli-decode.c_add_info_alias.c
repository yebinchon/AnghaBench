
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_alias_cmd (char*,char*,int ,int,int *) ;
 int infolist ;

struct cmd_list_element *
add_info_alias (char *name, char *oldname, int abbrev_flag)
{
  return add_alias_cmd (name, oldname, 0, abbrev_flag, &infolist);
}
