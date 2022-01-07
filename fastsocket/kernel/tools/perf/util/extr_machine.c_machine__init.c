
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {struct machine* machine; } ;
struct machine {int * root_dir; scalar_t__ pid; TYPE_1__ kmaps; int * last_match; int dead_threads; int threads; int kernel_dsos; int user_dsos; int rb_node; } ;
typedef scalar_t__ pid_t ;
typedef int comm ;


 int ENOMEM ;
 scalar_t__ HOST_KERNEL_ID ;
 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int RB_ROOT ;
 struct thread* machine__findnew_thread (struct machine*,scalar_t__) ;
 int map_groups__init (TYPE_1__*) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int * strdup (char const*) ;
 int thread__set_comm (struct thread*,char*) ;

int machine__init(struct machine *machine, const char *root_dir, pid_t pid)
{
 map_groups__init(&machine->kmaps);
 RB_CLEAR_NODE(&machine->rb_node);
 INIT_LIST_HEAD(&machine->user_dsos);
 INIT_LIST_HEAD(&machine->kernel_dsos);

 machine->threads = RB_ROOT;
 INIT_LIST_HEAD(&machine->dead_threads);
 machine->last_match = ((void*)0);

 machine->kmaps.machine = machine;
 machine->pid = pid;

 machine->root_dir = strdup(root_dir);
 if (machine->root_dir == ((void*)0))
  return -ENOMEM;

 if (pid != HOST_KERNEL_ID) {
  struct thread *thread = machine__findnew_thread(machine, pid);
  char comm[64];

  if (thread == ((void*)0))
   return -ENOMEM;

  snprintf(comm, sizeof(comm), "[guest/%d]", pid);
  thread__set_comm(thread, comm);
 }

 return 0;
}
