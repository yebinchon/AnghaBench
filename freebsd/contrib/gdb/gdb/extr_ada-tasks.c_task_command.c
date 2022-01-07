
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_entry {int lwp; int thread; int known_tasks_index; } ;


 int atoi (char*) ;
 int current_lwp ;
 int current_task ;
 int current_task_id ;
 int current_task_index ;
 int current_thread ;
 int deprecated_selected_frame ;
 int error (char*,...) ;
 int fill_fpregset (int *,int) ;
 int fill_gregset (int *,int) ;
 int fpregset_saved ;
 int frame_relative_level (int ) ;
 int get_current_task () ;
 struct task_entry* get_entry_vptr (int) ;
 int gregset_saved ;
 int print_stack_frame (int ,int ,int) ;
 int printf_filtered (char*,int) ;
 scalar_t__ task_switch (int ,int ) ;

__attribute__((used)) static void
task_command (char *tidstr, int from_tty)
{
  int num;
  struct task_entry *e;

  if (!tidstr)
    error ("Please specify a task ID.  Use the \"info tasks\" command to\n"
    "see the IDs of currently known tasks.");

  num = atoi (tidstr);
  e = get_entry_vptr (num);

  if (e == ((void*)0))
    error ("Task ID %d not known.  Use the \"info tasks\" command to\n"
    "see the IDs of currently known tasks.", num);

  if (current_task_id == -1)
    {




      current_task_id = get_current_task ();
    }

  current_task = num;
  current_task_index = e->known_tasks_index;
  current_thread = e->thread;
  current_lwp = e->lwp;
  if (task_switch (e->thread, e->lwp) == 0)
    {



      printf_filtered ("[Switching to task %d]\n", num);
      print_stack_frame (deprecated_selected_frame,
    frame_relative_level (deprecated_selected_frame), 1);
    }
  else
    printf_filtered ("Unable to switch to task %d\n", num);
}
