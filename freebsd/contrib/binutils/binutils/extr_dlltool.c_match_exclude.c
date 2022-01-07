
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int string; struct string_list* next; } ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 struct string_list* excludes ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bfd_boolean
match_exclude (const char *string)
{
  struct string_list *excl_item;

  for (excl_item = excludes; excl_item; excl_item = excl_item->next)
    if (strcmp (string, excl_item->string) == 0)
      return TRUE;
  return FALSE;
}
