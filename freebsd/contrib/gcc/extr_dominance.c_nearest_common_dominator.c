
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum cdi_direction { ____Placeholder_cdi_direction } cdi_direction ;
typedef TYPE_1__* basic_block ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int * dom; } ;


 int * dom_computed ;
 TYPE_5__* et_nca (int ,int ) ;
 int gcc_assert (int ) ;

basic_block
nearest_common_dominator (enum cdi_direction dir, basic_block bb1, basic_block bb2)
{
  gcc_assert (dom_computed[dir]);

  if (!bb1)
    return bb2;
  if (!bb2)
    return bb1;

  return et_nca (bb1->dom[dir], bb2->dom[dir])->data;
}
