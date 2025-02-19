
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 scalar_t__ DEPRECATED_STREQN (char const*,char*,int) ;
 int GROW_VECT (char*,size_t,int) ;
 scalar_t__ TYPE_CODE (struct type*) ;
 scalar_t__ TYPE_CODE_PTR ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 char* ada_type_name (struct type*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

char *
ada_variant_discrim_name (struct type *type0)
{
  static char *result = ((void*)0);
  static size_t result_len = 0;
  struct type *type;
  const char *name;
  const char *discrim_end;
  const char *discrim_start;

  if (TYPE_CODE (type0) == TYPE_CODE_PTR)
    type = TYPE_TARGET_TYPE (type0);
  else
    type = type0;

  name = ada_type_name (type);

  if (name == ((void*)0) || name[0] == '\000')
    return "";

  for (discrim_end = name + strlen (name) - 6; discrim_end != name;
       discrim_end -= 1)
    {
      if (DEPRECATED_STREQN (discrim_end, "___XVN", 6))
 break;
    }
  if (discrim_end == name)
    return "";

  for (discrim_start = discrim_end; discrim_start != name + 3;
       discrim_start -= 1)
    {
      if (discrim_start == name + 1)
 return "";
      if ((discrim_start > name + 3 && DEPRECATED_STREQN (discrim_start - 3, "___", 3))
   || discrim_start[-1] == '.')
 break;
    }

  GROW_VECT (result, result_len, discrim_end - discrim_start + 1);
  strncpy (result, discrim_start, discrim_end - discrim_start);
  result[discrim_end - discrim_start] = '\0';
  return result;
}
