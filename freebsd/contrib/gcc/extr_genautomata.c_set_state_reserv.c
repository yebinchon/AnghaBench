
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
struct TYPE_3__ {int reservs; } ;


 int set_unit_reserv (int ,int,int) ;

__attribute__((used)) static void
set_state_reserv (state_t state, int cycle_num, int unit_num)
{
  set_unit_reserv (state->reservs, cycle_num, unit_num);
}
