
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_name_list {int name; struct macro_name_list* next; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
currently_rescanning (struct macro_name_list *list, const char *name)
{
  for (; list; list = list->next)
    if (strcmp (name, list->name) == 0)
      return 1;

  return 0;
}
