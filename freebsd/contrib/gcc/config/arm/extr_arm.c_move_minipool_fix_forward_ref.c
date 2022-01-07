
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ max_address; scalar_t__ fix_size; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
typedef TYPE_1__ Mnode ;
typedef scalar_t__ HOST_WIDE_INT ;


 int gcc_assert (int) ;
 TYPE_1__* minipool_vector_head ;
 TYPE_1__* minipool_vector_tail ;

__attribute__((used)) static Mnode *
move_minipool_fix_forward_ref (Mnode *mp, Mnode *max_mp,
          HOST_WIDE_INT max_address)
{

  gcc_assert (mp != max_mp);

  if (max_mp == ((void*)0))
    {
      if (max_address < mp->max_address)
 mp->max_address = max_address;
    }
  else
    {
      if (max_address > max_mp->max_address - mp->fix_size)
 mp->max_address = max_mp->max_address - mp->fix_size;
      else
 mp->max_address = max_address;



      mp->prev->next = mp->next;
      if (mp->next != ((void*)0))
 mp->next->prev = mp->prev;
      else
 minipool_vector_tail = mp->prev;


      mp->next = max_mp;
      mp->prev = max_mp->prev;
      max_mp->prev = mp;

      if (mp->prev != ((void*)0))
 mp->prev->next = mp;
      else
 minipool_vector_head = mp;
    }


  max_mp = mp;



  while (mp->prev != ((void*)0)
  && mp->prev->max_address > mp->max_address - mp->prev->fix_size)
    {
      mp->prev->max_address = mp->max_address - mp->prev->fix_size;
      mp = mp->prev;
    }

  return max_mp;
}
