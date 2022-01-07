
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;





 char* _ (char*) ;



 int check_stdin () ;
 int fflush (int ) ;
 int fgets (char*,int,int ) ;
 int input_mode ;
 char* line ;
 int printf (char*,...) ;
 int stdin ;
 int stdout ;
 int sym_get_type (struct symbol*) ;
 scalar_t__ sym_has_value (struct symbol*) ;
 int sym_is_changable (struct symbol*) ;

__attribute__((used)) static int conf_askvalue(struct symbol *sym, const char *def)
{
 enum symbol_type type = sym_get_type(sym);

 if (!sym_has_value(sym))
  printf(_("(NEW) "));

 line[0] = '\n';
 line[1] = 0;

 if (!sym_is_changable(sym)) {
  printf("%s\n", def);
  line[0] = '\n';
  line[1] = 0;
  return 0;
 }

 switch (input_mode) {
 case 129:
 case 128:
  if (sym_has_value(sym)) {
   printf("%s\n", def);
   return 0;
  }
  check_stdin();
 case 130:
  fflush(stdout);
  fgets(line, 128, stdin);
  return 1;
 default:
  break;
 }

 switch (type) {
 case 132:
 case 133:
 case 131:
  printf("%s\n", def);
  return 1;
 default:
  ;
 }
 printf("%s", line);
 return 1;
}
