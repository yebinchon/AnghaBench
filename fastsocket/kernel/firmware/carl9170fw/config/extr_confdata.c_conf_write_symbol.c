
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; } ;
struct conf_printer {int (* print_symbol ) (int *,struct symbol*,char const*,void*) ;} ;
typedef int FILE ;





 int free (void*) ;
 int stub1 (int *,struct symbol*,char const*,void*) ;
 int stub2 (int *,struct symbol*,char const*,void*) ;
 char* sym_escape_string_value (char const*) ;
 char* sym_get_string_value (struct symbol*) ;

__attribute__((used)) static void conf_write_symbol(FILE *fp, struct symbol *sym,
         struct conf_printer *printer, void *printer_arg)
{
 const char *str;

 switch (sym->type) {
 case 130:
 case 128:
  break;
 case 129:
  str = sym_get_string_value(sym);
  str = sym_escape_string_value(str);
  printer->print_symbol(fp, sym, str, printer_arg);
  free((void *)str);
  break;
 default:
  str = sym_get_string_value(sym);
  printer->print_symbol(fp, sym, str, printer_arg);
 }
}
