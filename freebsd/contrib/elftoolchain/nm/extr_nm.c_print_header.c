
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int undef_only; scalar_t__ print_name; int * elem_print_fn; } ;


 scalar_t__ PRINT_NAME_FULL ;
 scalar_t__ PRINT_NAME_MULTI ;
 TYPE_1__ nm_opts ;
 int printf (char*,...) ;
 int * sym_elem_print_all ;
 int * sym_elem_print_all_portable ;
 int sym_elem_print_all_sysv ;

__attribute__((used)) static void
print_header(const char *file, const char *obj)
{

 if (file == ((void*)0))
  return;

 if (nm_opts.elem_print_fn == &sym_elem_print_all_sysv) {
  printf("\n\n%s from %s",
      nm_opts.undef_only == 0 ? "Symbols" :
      "Undefined symbols", file);
  if (obj != ((void*)0))
   printf("[%s]", obj);
  printf(":\n\n");

  printf("Name                  Value           Class        Type         Size             Line  Section\n\n");

 } else {

  if (nm_opts.print_name != PRINT_NAME_FULL && obj != ((void*)0)) {
   if (nm_opts.elem_print_fn ==
       sym_elem_print_all_portable)
    printf("%s[%s]:\n", file, obj);
   else if (nm_opts.elem_print_fn == sym_elem_print_all)
    printf("\n%s:\n", obj);

  } else if (nm_opts.print_name == PRINT_NAME_MULTI) {
   if (nm_opts.elem_print_fn == sym_elem_print_all)
    printf("\n");
   printf("%s:\n", file);
  }
 }
}
