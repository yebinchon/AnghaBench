
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct id {scalar_t__ sequence; struct id* next; int name; } ;
struct head {struct id* first; } ;


 scalar_t__ extract_init_priority (int ) ;
 scalar_t__ sequence_number ;

__attribute__((used)) static void
sort_ids (struct head *head_ptr)
{



  struct id *id, *id_next, **id_ptr;

  id = head_ptr->first;


  head_ptr->first = ((void*)0);

  for (; id; id = id_next)
    {
      id_next = id->next;
      id->sequence = extract_init_priority (id->name);

      for (id_ptr = &(head_ptr->first); ; id_ptr = &((*id_ptr)->next))
 if (*id_ptr == ((void*)0)


     || id->sequence > (*id_ptr)->sequence



     )
   {
     id->next = *id_ptr;
     *id_ptr = id;
     break;
   }
    }


  for (id = head_ptr->first; id; id = id->next)
    id->sequence = ++sequence_number;
}
