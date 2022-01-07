
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {int line; int symtab; } ;
struct macro_source_file {int dummy; } ;
struct macro_scope {int dummy; } ;


 scalar_t__ deprecated_selected_frame ;
 struct symtab_and_line find_pc_line (int ,int ) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;
 int get_frame_pc (scalar_t__) ;
 int read_pc () ;
 struct macro_scope* sal_macro_scope (struct symtab_and_line) ;
 scalar_t__ target_has_registers ;

struct macro_scope *
default_macro_scope (void)
{
  struct symtab_and_line sal;
  struct macro_source_file *main;
  struct macro_scope *ms;


  if (deprecated_selected_frame)
    sal = find_pc_line (get_frame_pc (deprecated_selected_frame), 0);



  else if (target_has_registers)
    sal = find_pc_line (read_pc (), 0);


  else
    {
      struct symtab_and_line cursal =
         get_current_source_symtab_and_line ();

      sal.symtab = cursal.symtab;
      sal.line = cursal.line;
    }

  return sal_macro_scope (sal);
}
