
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int import_list_size; scalar_t__* import_list; } ;


 scalar_t__ DEPRECATED_STREQ (char*,scalar_t__) ;

int
is_in_import_list (char *name, struct objfile *objfile)
{
  int i;

  if (!objfile || !name || !*name)
    return 0;

  for (i = 0; i < objfile->import_list_size; i++)
    if (objfile->import_list[i] && DEPRECATED_STREQ (name, objfile->import_list[i]))
      return 1;
  return 0;
}
