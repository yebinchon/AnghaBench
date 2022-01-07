
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct gstr {int dummy; } ;


 int _ (char*) ;
 int dialog_clear () ;
 char* dialog_input_result ;
 int dialog_inputbox (int ,int ,int,int,char*) ;
 int free (struct symbol**) ;
 struct gstr get_relations_str (struct symbol**) ;
 int search_help ;
 int show_helptext (int ,int ) ;
 int show_textbox (int ,int ,int ,int ) ;
 int str_free (struct gstr*) ;
 int str_get (struct gstr*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 struct symbol** sym_re_search (char*) ;

__attribute__((used)) static void search_conf(void)
{
 struct symbol **sym_arr;
 struct gstr res;
 char *dialog_input;
 int dres;
again:
 dialog_clear();
 dres = dialog_inputbox(_("Search Configuration Parameter"),
         _("Enter CONFIG_ (sub)string to search for "
    "(with or without \"CONFIG\")"),
         10, 75, "");
 switch (dres) {
 case 0:
  break;
 case 1:
  show_helptext(_("Search Configuration"), search_help);
  goto again;
 default:
  return;
 }


 dialog_input = dialog_input_result;
 if (strncasecmp(dialog_input_result, "CONFIG_", 7) == 0)
  dialog_input += 7;

 sym_arr = sym_re_search(dialog_input);
 res = get_relations_str(sym_arr);
 free(sym_arr);
 show_textbox(_("Search Results"), str_get(&res), 0, 0);
 str_free(&res);
}
