
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_stack {struct file_stack* next; int location; } ;


 unsigned int INPUT_FILE_STACK_BITS ;
 int VEC_safe_push (int ,int ,int ,struct file_stack*) ;
 int fs_p ;
 int gcc_assert (int) ;
 int heap ;
 struct file_stack* input_file_stack ;
 int input_file_stack_history ;
 int input_file_stack_restored ;
 int input_file_stack_tick ;
 int input_location ;
 int sorry (char*,int) ;

void
pop_srcloc (void)
{
  struct file_stack *fs;

  gcc_assert (!input_file_stack_restored);
  if (input_file_stack_tick == (int) ((1U << INPUT_FILE_STACK_BITS) - 1))
    sorry ("GCC supports only %d input file changes", input_file_stack_tick);

  fs = input_file_stack;
  input_location = fs->location;
  input_file_stack = fs->next;
  input_file_stack_tick++;
  VEC_safe_push (fs_p, heap, input_file_stack_history, input_file_stack);
}
