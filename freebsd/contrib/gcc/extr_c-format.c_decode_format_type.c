
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int format_type_error ;
 TYPE_1__* format_types ;
 int n_format_types ;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
decode_format_type (const char *s)
{
  int i;
  int slen;
  slen = strlen (s);
  for (i = 0; i < n_format_types; i++)
    {
      int alen;
      if (!strcmp (s, format_types[i].name))
 return i;
      alen = strlen (format_types[i].name);
      if (slen == alen + 4 && s[0] == '_' && s[1] == '_'
   && s[slen - 1] == '_' && s[slen - 2] == '_'
   && !strncmp (s + 2, format_types[i].name, alen))
 return i;
    }
  return format_type_error;
}
