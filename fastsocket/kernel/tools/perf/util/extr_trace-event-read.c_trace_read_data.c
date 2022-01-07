
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pevent_record {int dummy; } ;
struct pevent {int dummy; } ;
struct TYPE_2__ {int * next; } ;


 TYPE_1__* cpu_data ;
 struct pevent_record* trace_peek_data (struct pevent*,int) ;

struct pevent_record *trace_read_data(struct pevent *pevent, int cpu)
{
 struct pevent_record *data;

 data = trace_peek_data(pevent, cpu);
 cpu_data[cpu].next = ((void*)0);

 return data;
}
