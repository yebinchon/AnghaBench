
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pending {struct pending* next; } ;


 struct pending* free_pendings ;

void
add_free_pendings (struct pending *list)
{
  struct pending *link = list;

  if (list)
    {
      while (link->next) link = link->next;
      link->next = free_pendings;
      free_pendings = list;
    }
}
