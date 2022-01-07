
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_pidcomm {struct per_pidcomm* next; int comm; struct cpu_sample* samples; } ;
struct per_pid {struct per_pid* next; struct per_pidcomm* all; } ;
struct cpu_sample {scalar_t__ type; struct cpu_sample* next; int end_time; int start_time; int cpu; } ;


 scalar_t__ TYPE_RUNNING ;
 struct per_pid* all_data ;
 int svg_process (int ,int ,int ,char*,int ) ;

__attribute__((used)) static void draw_cpu_usage(void)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 struct cpu_sample *sample;
 p = all_data;
 while (p) {
  c = p->all;
  while (c) {
   sample = c->samples;
   while (sample) {
    if (sample->type == TYPE_RUNNING)
     svg_process(sample->cpu, sample->start_time, sample->end_time, "sample", c->comm);

    sample = sample->next;
   }
   c = c->next;
  }
  p = p->next;
 }
}
