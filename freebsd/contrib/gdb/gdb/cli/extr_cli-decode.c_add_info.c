
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 struct cmd_list_element* add_cmd (char*,int ,void (*) (char*,int),char*,int *) ;
 int infolist ;
 int no_class ;

struct cmd_list_element *
add_info (char *name, void (*fun) (char *, int), char *doc)
{
  return add_cmd (name, no_class, fun, doc, &infolist);
}
