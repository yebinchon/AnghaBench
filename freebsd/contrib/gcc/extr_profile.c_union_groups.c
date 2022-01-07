
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_6__ {struct TYPE_6__* aux; } ;


 TYPE_1__* find_group (TYPE_1__*) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
union_groups (basic_block bb1, basic_block bb2)
{
  basic_block bb1g = find_group (bb1);
  basic_block bb2g = find_group (bb2);



  gcc_assert (bb1g != bb2g);

  bb1g->aux = bb2g;
}
