
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ refcount; scalar_t__ fix_size; int offset; struct TYPE_3__* next; } ;
typedef TYPE_1__ Mnode ;
typedef int Mfix ;
typedef int HOST_WIDE_INT ;


 int * minipool_barrier ;
 TYPE_1__* minipool_vector_head ;

__attribute__((used)) static void
assign_minipool_offsets (Mfix *barrier)
{
  HOST_WIDE_INT offset = 0;
  Mnode *mp;

  minipool_barrier = barrier;

  for (mp = minipool_vector_head; mp != ((void*)0); mp = mp->next)
    {
      mp->offset = offset;

      if (mp->refcount > 0)
 offset += mp->fix_size;
    }
}
