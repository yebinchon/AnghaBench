
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * VEC_index (int ,int ,int) ;
 int fs_p ;
 int * input_file_stack ;
 int input_file_stack_history ;
 int input_file_stack_restored ;
 int input_file_stack_tick ;

void
restore_input_file_stack (int tick)
{
  if (tick == 0)
    input_file_stack = ((void*)0);
  else
    input_file_stack = VEC_index (fs_p, input_file_stack_history, tick - 1);
  input_file_stack_tick = tick;
  input_file_stack_restored = 1;
}
