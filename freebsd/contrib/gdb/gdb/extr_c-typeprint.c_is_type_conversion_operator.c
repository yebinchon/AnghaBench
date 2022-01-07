
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 char* TYPE_FN_FIELDLIST_NAME (struct type*,int) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
is_type_conversion_operator (struct type *type, int i, int j)
{




  char *name = TYPE_FN_FIELDLIST_NAME (type, i);

  if (strncmp (name, "operator", 8) != 0)
    return 0;

  name += 8;
  if (! strchr (" \t\f\n\r", *name))
    return 0;

  while (strchr (" \t\f\n\r", *name))
    name++;

  if (!('a' <= *name && *name <= 'z')
      && !('A' <= *name && *name <= 'Z')
      && *name != '_')


    return 0;
  else if (strncmp (name, "new", 3) == 0)
    name += 3;
  else if (strncmp (name, "delete", 6) == 0)
    name += 6;
  else


    return 1;


  if (('a' <= *name && *name <= 'z')
      || ('A' <= *name && *name <= 'Z')
      || ('0' <= *name && *name <= '9')
      || *name == '_')


    return 1;



  return 0;
}
