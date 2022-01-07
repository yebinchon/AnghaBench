
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlist {scalar_t__ expr; struct tlist* next; scalar_t__ writer; } ;


 struct tlist* new_tlist (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
merge_tlist (struct tlist **to, struct tlist *add, int copy)
{
  struct tlist **end = to;

  while (*end)
    end = &(*end)->next;

  while (add)
    {
      int found = 0;
      struct tlist *tmp2;
      struct tlist *next = add->next;

      for (tmp2 = *to; tmp2; tmp2 = tmp2->next)
 if (tmp2->expr == add->expr)
   {
     found = 1;
     if (!tmp2->writer)
       tmp2->writer = add->writer;
   }
      if (!found)
 {
   *end = copy ? add : new_tlist (((void*)0), add->expr, add->writer);
   end = &(*end)->next;
   *end = 0;
 }
      add = next;
    }
}
