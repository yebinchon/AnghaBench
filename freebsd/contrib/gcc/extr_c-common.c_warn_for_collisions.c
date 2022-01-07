
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlist {scalar_t__ writer; int expr; struct tlist* next; } ;


 int warn_for_collisions_1 (int ,scalar_t__,struct tlist*,int ) ;

__attribute__((used)) static void
warn_for_collisions (struct tlist *list)
{
  struct tlist *tmp;

  for (tmp = list; tmp; tmp = tmp->next)
    {
      if (tmp->writer)
 warn_for_collisions_1 (tmp->expr, tmp->writer, list, 0);
    }
}
