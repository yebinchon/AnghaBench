
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; char* name; } ;
typedef int FILE ;


 char* CONFIG_ ;





 int abort () ;
 int fprintf (int *,char*,char*,char*,char const*,...) ;

__attribute__((used)) static void
kconfig_print_cmake_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
{

 switch (sym->type) {
 case 132:
 case 128:
  if (*value == 'n') {
   bool skip_unset = (arg != ((void*)0));

   if (!skip_unset)
    fprintf(fp, "set(%s%s false)\n",
     CONFIG_, sym->name, value);
   return;
  } else if (*value == 'm') {
   abort();
  } else {
   fprintf(fp, "set(%s%s true)\n", CONFIG_, sym->name, value);
  }
  break;
 case 131: {
  const char *prefix = "";

  if (value[0] != '0' || (value[1] != 'x' && value[1] != 'X'))
   prefix = "0x";
  fprintf(fp, "set(%s%s %s%s)\n",
      CONFIG_, sym->name, prefix, value);
  break;
 }
 case 129:
 case 130:
  fprintf(fp, "set(%s%s %s)\n",
      CONFIG_, sym->name, value);
  break;
 default:
  break;
 }

}
