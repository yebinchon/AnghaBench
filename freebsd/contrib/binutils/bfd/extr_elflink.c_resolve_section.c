
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_3__ {char const* name; scalar_t__ size; scalar_t__ vma; struct TYPE_3__* next; } ;
typedef TYPE_1__ asection ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char const*) ;
 unsigned int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static bfd_boolean
resolve_section (const char * name,
   asection * sections,
   bfd_vma * result)
{
  asection * curr;
  unsigned int len;

  for (curr = sections; curr; curr = curr->next)
    if (strcmp (curr->name, name) == 0)
      {
 *result = curr->vma;
 return TRUE;
      }


  for (curr = sections; curr; curr = curr->next)
    {
      len = strlen (curr->name);
      if (len > strlen (name))
 continue;

      if (strncmp (curr->name, name, len) == 0)
 {
   if (strncmp (".end", name + len, 4) == 0)
     {
       *result = curr->vma + curr->size;
       return TRUE;
     }


 }
    }

  return FALSE;
}
