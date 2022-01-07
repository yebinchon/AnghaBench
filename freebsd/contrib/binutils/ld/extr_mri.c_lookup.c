
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_name_struct {struct section_name_struct* next; int name; } ;


 scalar_t__ strcmp (char const*,int ) ;
 struct section_name_struct* xmalloc (int) ;

__attribute__((used)) static struct section_name_struct **
lookup (const char *name, struct section_name_struct **list)
{
  struct section_name_struct **ptr = list;

  while (*ptr)
    {
      if (strcmp (name, (*ptr)->name) == 0)


 *ptr = (*ptr)->next;
      else
 ptr = &((*ptr)->next);
    }

  *ptr = xmalloc (sizeof (struct section_name_struct));
  return ptr;
}
