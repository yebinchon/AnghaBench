
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_pidcomm {int Y; char* comm; int total_time; struct per_pidcomm* next; int start_time; struct cpu_sample* samples; int end_time; int display; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;
struct cpu_sample {scalar_t__ type; struct cpu_sample* next; int end_time; int start_time; int cpu; } ;


 scalar_t__ TYPE_BLOCKED ;
 scalar_t__ TYPE_RUNNING ;
 scalar_t__ TYPE_WAITING ;
 struct per_pid* all_data ;
 int numcpus ;
 int sprintf (char*,char*,char*,int,double) ;
 int svg_box (int,int ,int ,char*) ;
 int svg_sample (int,int ,int ,int ) ;
 int svg_text (int,int ,char*) ;
 int svg_waiting (int,int ,int ) ;

__attribute__((used)) static void draw_process_bars(void)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 struct cpu_sample *sample;
 int Y = 0;

 Y = 2 * numcpus + 2;

 p = all_data;
 while (p) {
  c = p->all;
  while (c) {
   if (!c->display) {
    c->Y = 0;
    c = c->next;
    continue;
   }

   svg_box(Y, c->start_time, c->end_time, "process");
   sample = c->samples;
   while (sample) {
    if (sample->type == TYPE_RUNNING)
     svg_sample(Y, sample->cpu, sample->start_time, sample->end_time);
    if (sample->type == TYPE_BLOCKED)
     svg_box(Y, sample->start_time, sample->end_time, "blocked");
    if (sample->type == TYPE_WAITING)
     svg_waiting(Y, sample->start_time, sample->end_time);
    sample = sample->next;
   }

   if (c->comm) {
    char comm[256];
    if (c->total_time > 5000000000)
     sprintf(comm, "%s:%i (%2.2fs)", c->comm, p->pid, c->total_time / 1000000000.0);
    else
     sprintf(comm, "%s:%i (%3.1fms)", c->comm, p->pid, c->total_time / 1000000.0);

    svg_text(Y, c->start_time, comm);
   }
   c->Y = Y;
   Y++;
   c = c->next;
  }
  p = p->next;
 }
}
