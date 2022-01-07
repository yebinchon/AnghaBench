
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_support ;
 int pascal_static_field_print ;
 int setprintlist ;
 int showprintlist ;
 int var_boolean ;

void
_initialize_pascal_valprint (void)
{
  add_show_from_set
    (add_set_cmd ("pascal_static-members", class_support, var_boolean,
    (char *) &pascal_static_field_print,
    "Set printing of pascal static members.",
    &setprintlist),
     &showprintlist);

  pascal_static_field_print = 1;

}
