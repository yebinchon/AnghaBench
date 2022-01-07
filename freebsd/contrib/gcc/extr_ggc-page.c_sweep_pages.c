
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t num_free_objects; scalar_t__ context_depth; struct TYPE_6__* next; struct TYPE_6__* prev; } ;
typedef TYPE_1__ page_entry ;
struct TYPE_7__ {size_t allocated; scalar_t__ context_depth; TYPE_1__** pages; TYPE_1__** page_tails; } ;


 TYPE_5__ G ;
 unsigned int NUM_ORDERS ;
 size_t OBJECTS_IN_PAGE (TYPE_1__*) ;
 size_t OBJECT_SIZE (unsigned int) ;
 int free_page (TYPE_1__*) ;
 int ggc_recalculate_in_use_p (TYPE_1__*) ;

__attribute__((used)) static void
sweep_pages (void)
{
  unsigned order;

  for (order = 2; order < NUM_ORDERS; order++)
    {


      page_entry * const last = G.page_tails[order];

      size_t num_objects;
      size_t live_objects;
      page_entry *p, *previous;
      int done;

      p = G.pages[order];
      if (p == ((void*)0))
 continue;

      previous = ((void*)0);
      do
 {
   page_entry *next = p->next;


   done = (p == last);

   num_objects = OBJECTS_IN_PAGE (p);



   live_objects = num_objects - p->num_free_objects;

   G.allocated += OBJECT_SIZE (order) * live_objects;



   if (p->context_depth < G.context_depth)
     ;


   else if (live_objects == 0)
     {



       if (! previous)
  G.pages[order] = next;
       else
  previous->next = next;


       if (next)
  next->prev = previous;


       if (p == G.page_tails[order])
  G.page_tails[order] = previous;
       free_page (p);
       p = previous;
     }


   else if (p->num_free_objects == 0)
     {

       if (p != G.page_tails[order])
  {

    p->next = ((void*)0);
    p->prev = G.page_tails[order];
    G.page_tails[order]->next = p;


    G.page_tails[order] = p;


    if (! previous)
      G.pages[order] = next;
    else
      previous->next = next;


    if (next)
      next->prev = previous;

    p = previous;
  }
     }





   else if (p != G.pages[order])
     {
       previous->next = p->next;


       if (p->next)
  p->next->prev = previous;


       p->next = G.pages[order];
       p->prev = ((void*)0);
       G.pages[order]->prev = p;


       G.pages[order] = p;


       if (G.page_tails[order] == p)
         G.page_tails[order] = previous;
       p = previous;
     }

   previous = p;
   p = next;
 }
      while (! done);



      for (p = G.pages[order]; p; p = p->next)
 if (p->context_depth != G.context_depth)
   ggc_recalculate_in_use_p (p);
    }
}
