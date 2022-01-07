
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ min_address; scalar_t__ refcount; scalar_t__ fix_size; struct TYPE_7__* next; scalar_t__ offset; struct TYPE_7__* prev; } ;
typedef TYPE_1__ Mnode ;
typedef scalar_t__ HOST_WIDE_INT ;


 int gcc_assert (int) ;
 TYPE_1__* minipool_vector_head ;
 TYPE_1__* minipool_vector_tail ;

__attribute__((used)) static Mnode *
move_minipool_fix_backward_ref (Mnode *mp, Mnode *min_mp,
    HOST_WIDE_INT min_address)
{
  HOST_WIDE_INT offset;


  gcc_assert (mp != min_mp);

  if (min_mp == ((void*)0))
    {
      if (min_address > mp->min_address)
 mp->min_address = min_address;
    }
  else
    {

      mp->min_address = min_address;



      mp->next->prev = mp->prev;
      if (mp->prev != ((void*)0))
 mp->prev->next = mp->next;
      else
 minipool_vector_head = mp->next;


      mp->prev = min_mp;
      mp->next = min_mp->next;
      min_mp->next = mp;
      if (mp->next != ((void*)0))
 mp->next->prev = mp;
      else
 minipool_vector_tail = mp;
    }

  min_mp = mp;

  offset = 0;
  for (mp = minipool_vector_head; mp != ((void*)0); mp = mp->next)
    {
      mp->offset = offset;
      if (mp->refcount > 0)
 offset += mp->fix_size;

      if (mp->next && mp->next->min_address < mp->min_address + mp->fix_size)
 mp->next->min_address = mp->min_address + mp->fix_size;
    }

  return min_mp;
}
