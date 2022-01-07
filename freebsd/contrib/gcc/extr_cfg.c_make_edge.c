
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_5__ {int flags; } ;


 TYPE_1__* find_edge (int ,int ) ;
 TYPE_1__* unchecked_make_edge (int ,int ,int) ;

edge
make_edge (basic_block src, basic_block dest, int flags)
{
  edge e = find_edge (src, dest);


  if (e)
    {
      e->flags |= flags;
      return ((void*)0);
    }

  return unchecked_make_edge (src, dest, flags);
}
