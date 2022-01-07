
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int max_loop; } ;
struct TYPE_3__ {int loop_father; } ;


 TYPE_2__* LIM_DATA (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int set_level (int ,int ,int ) ;

__attribute__((used)) static void
set_profitable_level (tree stmt)
{
  set_level (stmt, bb_for_stmt (stmt)->loop_father, LIM_DATA (stmt)->max_loop);
}
