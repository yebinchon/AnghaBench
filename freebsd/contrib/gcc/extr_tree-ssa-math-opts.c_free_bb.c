
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct occurrence {TYPE_1__* bb; struct occurrence* children; struct occurrence* next; } ;
struct TYPE_2__ {int * aux; } ;


 int occ_pool ;
 int pool_free (int ,struct occurrence*) ;

__attribute__((used)) static struct occurrence *
free_bb (struct occurrence *occ)
{
  struct occurrence *child, *next;


  next = occ->next;
  child = occ->children;
  occ->bb->aux = ((void*)0);
  pool_free (occ_pool, occ);


  if (!child)
    return next;
  else
    {
      while (next)
 next = free_bb (next);

      return child;
    }
}
