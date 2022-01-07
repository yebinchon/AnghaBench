
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redefine_node {char const* target; int source; struct redefine_node* next; } ;


 struct redefine_node* redefine_sym_list ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const char *
lookup_sym_redefinition (const char *source)
{
  struct redefine_node *list;

  for (list = redefine_sym_list; list != ((void*)0); list = list->next)
    if (strcmp (source, list->source) == 0)
      return list->target;

  return source;
}
