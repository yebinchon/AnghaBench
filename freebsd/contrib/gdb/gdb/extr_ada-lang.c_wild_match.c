
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEPRECATED_STREQN (char const*,char const*,int) ;
 scalar_t__ is_name_suffix (char const*) ;
 int islower (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static int
wild_match (const char *patn, int patn_len, const char *name)
{
  int name_len;
  int s, e;

  name_len = strlen (name);
  if (name_len >= patn_len + 5 && DEPRECATED_STREQN (name, "_ada_", 5)
      && DEPRECATED_STREQN (patn, name + 5, patn_len)
      && is_name_suffix (name + patn_len + 5))
    return 1;

  while (name_len >= patn_len)
    {
      if (DEPRECATED_STREQN (patn, name, patn_len) && is_name_suffix (name + patn_len))
 return 1;
      do
 {
   name += 1;
   name_len -= 1;
 }
      while (name_len > 0
      && name[0] != '.' && (name[0] != '_' || name[1] != '_'));
      if (name_len <= 0)
 return 0;
      if (name[0] == '_')
 {
   if (!islower (name[2]))
     return 0;
   name += 2;
   name_len -= 2;
 }
      else
 {
   if (!islower (name[1]))
     return 0;
   name += 1;
   name_len -= 1;
 }
    }

  return 0;
}
