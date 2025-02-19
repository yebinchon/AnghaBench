
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct per_pidcomm {scalar_t__ start_time; int total_time; struct cpu_sample* samples; struct per_pidcomm* next; } ;
struct per_pid {scalar_t__ start_time; int total_time; struct per_pidcomm* all; struct per_pidcomm* current; } ;
struct cpu_sample {int type; unsigned int cpu; struct cpu_sample* next; scalar_t__ end_time; scalar_t__ start_time; } ;


 int TYPE_RUNNING ;
 int assert (int ) ;
 struct per_pid* find_create_pid (int) ;
 void* zalloc (int) ;

__attribute__((used)) static void
pid_put_sample(int pid, int type, unsigned int cpu, u64 start, u64 end)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 struct cpu_sample *sample;

 p = find_create_pid(pid);
 c = p->current;
 if (!c) {
  c = zalloc(sizeof(*c));
  assert(c != ((void*)0));
  p->current = c;
  c->next = p->all;
  p->all = c;
 }

 sample = zalloc(sizeof(*sample));
 assert(sample != ((void*)0));
 sample->start_time = start;
 sample->end_time = end;
 sample->type = type;
 sample->next = c->samples;
 sample->cpu = cpu;
 c->samples = sample;

 if (sample->type == TYPE_RUNNING && end > start && start > 0) {
  c->total_time += (end-start);
  p->total_time += (end-start);
 }

 if (c->start_time == 0 || c->start_time > start)
  c->start_time = start;
 if (p->start_time == 0 || p->start_time > start)
  p->start_time = start;
}
