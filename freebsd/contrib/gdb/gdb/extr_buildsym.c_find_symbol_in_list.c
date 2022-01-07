
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct pending {int nsyms; struct pending* next; struct symbol** symbol; } ;


 char* DEPRECATED_SYMBOL_NAME (struct symbol*) ;
 scalar_t__ strncmp (char*,char*,int) ;

struct symbol *
find_symbol_in_list (struct pending *list, char *name, int length)
{
  int j;
  char *pp;

  while (list != ((void*)0))
    {
      for (j = list->nsyms; --j >= 0;)
 {
   pp = DEPRECATED_SYMBOL_NAME (list->symbol[j]);
   if (*pp == *name && strncmp (pp, name, length) == 0 &&
       pp[length] == '\0')
     {
       return (list->symbol[j]);
     }
 }
      list = list->next;
    }
  return (((void*)0));
}
