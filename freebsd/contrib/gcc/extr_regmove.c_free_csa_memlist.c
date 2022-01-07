
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_memlist {struct csa_memlist* next; } ;


 int free (struct csa_memlist*) ;

__attribute__((used)) static void
free_csa_memlist (struct csa_memlist *memlist)
{
  struct csa_memlist *next;
  for (; memlist ; memlist = next)
    {
      next = memlist->next;
      free (memlist);
    }
}
