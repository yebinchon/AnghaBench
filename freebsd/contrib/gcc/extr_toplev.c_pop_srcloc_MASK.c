#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct file_stack {struct file_stack* next; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 unsigned int INPUT_FILE_STACK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_stack*) ; 
 int /*<<< orphan*/  fs_p ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  heap ; 
 struct file_stack* input_file_stack ; 
 int /*<<< orphan*/  input_file_stack_history ; 
 int /*<<< orphan*/  input_file_stack_restored ; 
 int input_file_stack_tick ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

void
FUNC3 (void)
{
  struct file_stack *fs;

  FUNC1 (!input_file_stack_restored);
  if (input_file_stack_tick == (int) ((1U << INPUT_FILE_STACK_BITS) - 1))
    FUNC2 ("GCC supports only %d input file changes", input_file_stack_tick);

  fs = input_file_stack;
  input_location = fs->location;
  input_file_stack = fs->next;
  input_file_stack_tick++;
  FUNC0 (fs_p, heap, input_file_stack_history, input_file_stack);
}