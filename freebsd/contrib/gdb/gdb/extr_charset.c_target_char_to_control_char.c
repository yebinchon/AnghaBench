
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* target_char_to_control_char ) (int ,int,int*) ;int target_char_to_control_char_baton; } ;


 TYPE_1__* current_target_charset ;
 int stub1 (int ,int,int*) ;

int
target_char_to_control_char (int target_char, int *target_ctrl_char)
{
  return ((*current_target_charset->target_char_to_control_char)
          (current_target_charset->target_char_to_control_char_baton,
           target_char, target_ctrl_char));
}
