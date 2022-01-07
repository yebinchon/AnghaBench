
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct gstr {int dummy; } ;


 int _ (char*) ;
 int get_symbol_str (struct gstr*,struct symbol*) ;
 int str_append (struct gstr*,int ) ;
 struct gstr str_new () ;

__attribute__((used)) static struct gstr get_relations_str(struct symbol **sym_arr)
{
 struct symbol *sym;
 struct gstr res = str_new();
 int i;

 for (i = 0; sym_arr && (sym = sym_arr[i]); i++)
  get_symbol_str(&res, sym);
 if (!i)
  str_append(&res, _("No matches found.\n"));
 return res;
}
