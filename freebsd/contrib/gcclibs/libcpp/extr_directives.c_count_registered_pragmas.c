
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct pragma_entry* space; } ;
struct pragma_entry {TYPE_1__ u; scalar_t__ is_nspace; struct pragma_entry* next; } ;



__attribute__((used)) static int
count_registered_pragmas (struct pragma_entry *pe)
{
  int ct = 0;
  for (; pe != ((void*)0); pe = pe->next)
    {
      if (pe->is_nspace)
 ct += count_registered_pragmas (pe->u.space);
      ct++;
    }
  return ct;
}
