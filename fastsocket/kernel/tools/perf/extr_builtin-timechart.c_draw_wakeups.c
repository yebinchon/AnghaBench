
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wake_event {int waker; int wakee; scalar_t__ time; struct wake_event* next; } ;
struct per_pidcomm {int Y; scalar_t__ start_time; scalar_t__ end_time; struct per_pidcomm* next; int comm; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;


 int abs (int) ;
 struct per_pid* all_data ;
 int free (char*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,int) ;
 char* strdup (int ) ;
 int svg_interrupt (scalar_t__,int) ;
 int svg_partial_wakeline (scalar_t__,int,char*,int,char*) ;
 int svg_wakeline (scalar_t__,int,int) ;
 struct wake_event* wake_events ;

__attribute__((used)) static void draw_wakeups(void)
{
 struct wake_event *we;
 struct per_pid *p;
 struct per_pidcomm *c;

 we = wake_events;
 while (we) {
  int from = 0, to = 0;
  char *task_from = ((void*)0), *task_to = ((void*)0);


  p = all_data;
  while (p) {
   if (p->pid == we->waker || p->pid == we->wakee) {
    c = p->all;
    while (c) {
     if (c->Y && c->start_time <= we->time && c->end_time >= we->time) {
      if (p->pid == we->waker && !from) {
       from = c->Y;
       task_from = strdup(c->comm);
      }
      if (p->pid == we->wakee && !to) {
       to = c->Y;
       task_to = strdup(c->comm);
      }
     }
     c = c->next;
    }
    c = p->all;
    while (c) {
     if (p->pid == we->waker && !from) {
      from = c->Y;
      task_from = strdup(c->comm);
     }
     if (p->pid == we->wakee && !to) {
      to = c->Y;
      task_to = strdup(c->comm);
     }
     c = c->next;
    }
   }
   p = p->next;
  }

  if (!task_from) {
   task_from = malloc(40);
   sprintf(task_from, "[%i]", we->waker);
  }
  if (!task_to) {
   task_to = malloc(40);
   sprintf(task_to, "[%i]", we->wakee);
  }

  if (we->waker == -1)
   svg_interrupt(we->time, to);
  else if (from && to && abs(from - to) == 1)
   svg_wakeline(we->time, from, to);
  else
   svg_partial_wakeline(we->time, from, task_from, to, task_to);
  we = we->next;

  free(task_from);
  free(task_to);
 }
}
