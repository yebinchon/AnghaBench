
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct gstr {int dummy; } ;


 int str_append (struct gstr*,char const*) ;
 int str_printf (struct gstr*,char*,int ) ;
 int sym_get_string_value (struct symbol*) ;

__attribute__((used)) static void expr_print_gstr_helper(void *data, struct symbol *sym, const char *str)
{
 str_append((struct gstr*)data, str);
 if (sym)
  str_printf((struct gstr*)data, " [=%s]", sym_get_string_value(sym));
}
