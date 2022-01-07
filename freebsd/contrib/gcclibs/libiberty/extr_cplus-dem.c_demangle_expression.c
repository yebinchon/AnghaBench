
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int type_kind_t ;
struct work_stuff {int dummy; } ;
typedef int string ;
struct TYPE_3__ {char const* in; int out; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int demangle_template_value_parm (struct work_stuff*,char const**,int *,int ) ;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 TYPE_1__* optable ;
 int string_append (int *,int ) ;
 int string_appendn (int *,char*,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
demangle_expression (struct work_stuff *work, const char **mangled,
                     string *s, type_kind_t tk)
{
  int need_operator = 0;
  int success;

  success = 1;
  string_appendn (s, "(", 1);
  (*mangled)++;
  while (success && **mangled != 'W' && **mangled != '\0')
    {
      if (need_operator)
 {
   size_t i;
   size_t len;

   success = 0;

   len = strlen (*mangled);

   for (i = 0; i < ARRAY_SIZE (optable); ++i)
     {
       size_t l = strlen (optable[i].in);

       if (l <= len
    && memcmp (optable[i].in, *mangled, l) == 0)
  {
    string_appendn (s, " ", 1);
    string_append (s, optable[i].out);
    string_appendn (s, " ", 1);
    success = 1;
    (*mangled) += l;
    break;
  }
     }

   if (!success)
     break;
 }
      else
 need_operator = 1;

      success = demangle_template_value_parm (work, mangled, s, tk);
    }

  if (**mangled != 'W')
    success = 0;
  else
    {
      string_appendn (s, ")", 1);
      (*mangled)++;
    }

  return success;
}
