
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct loop {int dummy; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {struct loop* loop_father; } ;


 TYPE_1__* bb_for_stmt (int ) ;

__attribute__((used)) static inline struct loop *
loop_containing_stmt (tree stmt)
{
  basic_block bb = bb_for_stmt (stmt);
  if (!bb)
    return ((void*)0);

  return bb->loop_father;
}
