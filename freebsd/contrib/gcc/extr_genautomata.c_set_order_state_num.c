
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* state_t ;
struct TYPE_3__ {int order_state_num; } ;


 int curr_state_order_num ;

__attribute__((used)) static void
set_order_state_num (state_t state)
{
  state->order_state_num = curr_state_order_num;
  curr_state_order_num++;
}
