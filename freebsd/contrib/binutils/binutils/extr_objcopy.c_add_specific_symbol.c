
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symlist {char const* name; struct symlist* next; } ;


 struct symlist* xmalloc (int) ;

__attribute__((used)) static void
add_specific_symbol (const char *name, struct symlist **list)
{
  struct symlist *tmp_list;

  tmp_list = xmalloc (sizeof (struct symlist));
  tmp_list->name = name;
  tmp_list->next = *list;
  *list = tmp_list;
}
