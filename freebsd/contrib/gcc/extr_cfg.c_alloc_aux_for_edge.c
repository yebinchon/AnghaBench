
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* edge ;
struct TYPE_3__ {scalar_t__ aux; } ;


 int edge_aux_obstack ;
 scalar_t__ first_edge_aux_obj ;
 int gcc_assert (int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ obstack_alloc (int *,int) ;

inline void
alloc_aux_for_edge (edge e, int size)
{

  gcc_assert (!e->aux && first_edge_aux_obj);
  e->aux = obstack_alloc (&edge_aux_obstack, size);
  memset (e->aux, 0, size);
}
