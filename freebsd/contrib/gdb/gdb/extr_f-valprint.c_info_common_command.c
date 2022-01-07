
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int dummy; } ;
typedef struct symbol minimal_symbol ;
struct frame_info {int dummy; } ;
struct TYPE_5__ {struct TYPE_5__* next; struct symbol* symbol; } ;
struct TYPE_4__ {TYPE_2__* entries; } ;
typedef TYPE_1__* SAVED_F77_COMMON_PTR ;
typedef TYPE_2__* COMMON_ENTRY_PTR ;


 int BLANK_COMMON_NAME_LOCAL ;
 scalar_t__ BLOCK_START (int ) ;
 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 int SYMBOL_BLOCK_VALUE (struct symbol*) ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct symbol*) ;
 struct frame_info* deprecated_selected_frame ;
 int error (char*) ;
 TYPE_1__* find_common_for_function (char*,char*) ;
 struct symbol* find_pc_function (int ) ;
 int gdb_stdout ;
 int get_frame_pc (struct frame_info*) ;
 int list_all_visible_commons (char*) ;
 struct symbol* lookup_minimal_symbol_by_pc (int ) ;
 int print_variable_value (struct symbol*,struct frame_info*,int ) ;
 int printf_filtered (char*,...) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static void
info_common_command (char *comname, int from_tty)
{
  SAVED_F77_COMMON_PTR the_common;
  COMMON_ENTRY_PTR entry;
  struct frame_info *fi;
  char *funname = 0;
  struct symbol *func;






  fi = deprecated_selected_frame;

  if (fi == ((void*)0))
    error ("No frame selected");




  func = find_pc_function (get_frame_pc (fi));
  if (func)
    {
      struct minimal_symbol *msymbol = lookup_minimal_symbol_by_pc (get_frame_pc (fi));

      if (msymbol != ((void*)0)
   && (SYMBOL_VALUE_ADDRESS (msymbol)
       > BLOCK_START (SYMBOL_BLOCK_VALUE (func))))
 funname = DEPRECATED_SYMBOL_NAME (msymbol);
      else
 funname = DEPRECATED_SYMBOL_NAME (func);
    }
  else
    {
      struct minimal_symbol *msymbol =
      lookup_minimal_symbol_by_pc (get_frame_pc (fi));

      if (msymbol != ((void*)0))
 funname = DEPRECATED_SYMBOL_NAME (msymbol);
    }




  if (comname == 0)
    {
      list_all_visible_commons (funname);
      return;
    }

  the_common = find_common_for_function (comname, funname);

  if (the_common)
    {
      if (strcmp (comname, BLANK_COMMON_NAME_LOCAL) == 0)
 printf_filtered ("Contents of blank COMMON block:\n");
      else
 printf_filtered ("Contents of F77 COMMON block '%s':\n", comname);

      printf_filtered ("\n");
      entry = the_common->entries;

      while (entry != ((void*)0))
 {
   printf_filtered ("%s = ", DEPRECATED_SYMBOL_NAME (entry->symbol));
   print_variable_value (entry->symbol, fi, gdb_stdout);
   printf_filtered ("\n");
   entry = entry->next;
 }
    }
  else
    printf_filtered ("Cannot locate the common block %s in function '%s'\n",
       comname, funname);
}
