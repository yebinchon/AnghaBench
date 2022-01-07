
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int CORE_ADDR ;


 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_support ;
 int dont_print_statmem_obstack ;
 int dont_print_vb_obstack ;
 scalar_t__ objectprint ;
 int obstack_begin (int *,int) ;
 int obstack_specify_allocation (int *,int,int,int ,int ) ;
 int setprintlist ;
 int showprintlist ;
 int static_field_print ;
 int var_boolean ;
 scalar_t__ vtblprint ;
 int xfree ;
 int xmalloc ;

void
_initialize_cp_valprint (void)
{
  add_show_from_set
    (add_set_cmd ("static-members", class_support, var_boolean,
    (char *) &static_field_print,
    "Set printing of C++ static members.",
    &setprintlist),
     &showprintlist);

  static_field_print = 1;

  add_show_from_set
    (add_set_cmd ("vtbl", class_support, var_boolean, (char *) &vtblprint,
    "Set printing of C++ virtual function tables.",
    &setprintlist),
     &showprintlist);

  add_show_from_set
    (add_set_cmd ("object", class_support, var_boolean, (char *) &objectprint,
       "Set printing of object's derived type based on vtable info.",
    &setprintlist),
     &showprintlist);


  objectprint = 0;
  vtblprint = 0;
  obstack_begin (&dont_print_vb_obstack, 32 * sizeof (struct type *));
  obstack_specify_allocation (&dont_print_statmem_obstack,
         32 * sizeof (CORE_ADDR), sizeof (CORE_ADDR),
         xmalloc, xfree);
}
