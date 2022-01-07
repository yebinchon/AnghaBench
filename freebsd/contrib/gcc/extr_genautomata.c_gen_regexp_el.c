
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct decl {int dummy; } ;
typedef TYPE_1__* regexp_t ;
struct TYPE_8__ {char const* name; } ;
struct TYPE_7__ {int mode; } ;


 int NOTHING_NAME ;
 TYPE_5__* REGEXP_UNIT (TYPE_1__*) ;
 char* alloca (int) ;
 TYPE_1__* create_node (int) ;
 int fatal (char*,int ) ;
 TYPE_1__* gen_regexp_sequence (char*) ;
 int memcpy (char*,char const*,int) ;
 int reserv_str ;
 int rm_nothing ;
 int rm_unit ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static regexp_t
gen_regexp_el (const char *str)
{
  regexp_t regexp;
  char *dstr;
  int len;

  if (*str == '(')
    {
      len = strlen (str);
      if (str [len - 1] != ')')
 fatal ("garbage after ) in reservation `%s'", reserv_str);
      dstr = alloca (len - 1);
      memcpy (dstr, str + 1, len - 2);
      dstr [len-2] = '\0';
      regexp = gen_regexp_sequence (dstr);
    }
  else if (strcmp (str, NOTHING_NAME) == 0)
    {
      regexp = create_node (sizeof (struct decl));
      regexp->mode = rm_nothing;
    }
  else
    {
      regexp = create_node (sizeof (struct decl));
      regexp->mode = rm_unit;
      REGEXP_UNIT (regexp)->name = str;
    }
  return regexp;
}
