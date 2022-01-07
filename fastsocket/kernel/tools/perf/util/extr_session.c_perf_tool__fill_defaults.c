
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_tool {int * finished_round; scalar_t__ ordered_samples; int * build_id; int * tracing_data; int * event_type; int * attr; int * unthrottle; int * throttle; int * read; int * lost; int * exit; int * fork; int * comm; int * mmap; int * sample; } ;


 int * perf_event__process_lost ;
 void* process_event_sample_stub ;
 void* process_event_stub ;
 int * process_event_synth_attr_stub ;
 int * process_event_synth_tracing_data_stub ;
 int * process_event_type_stub ;
 int * process_finished_round ;
 void* process_finished_round_stub ;

__attribute__((used)) static void perf_tool__fill_defaults(struct perf_tool *tool)
{
 if (tool->sample == ((void*)0))
  tool->sample = process_event_sample_stub;
 if (tool->mmap == ((void*)0))
  tool->mmap = process_event_stub;
 if (tool->comm == ((void*)0))
  tool->comm = process_event_stub;
 if (tool->fork == ((void*)0))
  tool->fork = process_event_stub;
 if (tool->exit == ((void*)0))
  tool->exit = process_event_stub;
 if (tool->lost == ((void*)0))
  tool->lost = perf_event__process_lost;
 if (tool->read == ((void*)0))
  tool->read = process_event_sample_stub;
 if (tool->throttle == ((void*)0))
  tool->throttle = process_event_stub;
 if (tool->unthrottle == ((void*)0))
  tool->unthrottle = process_event_stub;
 if (tool->attr == ((void*)0))
  tool->attr = process_event_synth_attr_stub;
 if (tool->event_type == ((void*)0))
  tool->event_type = process_event_type_stub;
 if (tool->tracing_data == ((void*)0))
  tool->tracing_data = process_event_synth_tracing_data_stub;
 if (tool->build_id == ((void*)0))
  tool->build_id = process_finished_round_stub;
 if (tool->finished_round == ((void*)0)) {
  if (tool->ordered_samples)
   tool->finished_round = process_finished_round;
  else
   tool->finished_round = process_finished_round_stub;
 }
}
