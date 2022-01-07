
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct work_stuff {int dummy; } ;
struct TYPE_8__ {char* p; } ;
typedef TYPE_1__ string ;


 int do_type (struct work_stuff*,char const**,TYPE_1__*) ;
 scalar_t__ get_count (char const**,int*) ;
 int string_append (TYPE_1__*,char*) ;
 int string_appends (TYPE_1__*,TYPE_1__*) ;
 int string_delete (TYPE_1__*) ;

__attribute__((used)) static int
demangle_template_template_parm (struct work_stuff *work,
                                 const char **mangled, string *tname)
{
  int i;
  int r;
  int need_comma = 0;
  int success = 1;
  string temp;

  string_append (tname, "template <");

  if (get_count (mangled, &r))
    {
      for (i = 0; i < r; i++)
 {
   if (need_comma)
     {
       string_append (tname, ", ");
     }


     if (**mangled == 'Z')
       {
  (*mangled)++;
  string_append (tname, "class");
       }

     else if (**mangled == 'z')
       {
  (*mangled)++;
  success =
    demangle_template_template_parm (work, mangled, tname);
  if (!success)
    {
      break;
    }
       }
     else
       {

  success = do_type (work, mangled, &temp);
  if (success)
    {
      string_appends (tname, &temp);
    }
  string_delete(&temp);
  if (!success)
    {
      break;
    }
       }
   need_comma = 1;
 }

    }
  if (tname->p[-1] == '>')
    string_append (tname, " ");
  string_append (tname, "> class");
  return (success);
}
