
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_point {int retprobe; int offset; int symbol; } ;
struct perf_probe_point {int retprobe; int offset; int * function; } ;


 int ENOMEM ;
 int * strdup (int ) ;

__attribute__((used)) static int convert_to_perf_probe_point(struct probe_trace_point *tp,
     struct perf_probe_point *pp)
{
 pp->function = strdup(tp->symbol);

 if (pp->function == ((void*)0))
  return -ENOMEM;

 pp->offset = tp->offset;
 pp->retprobe = tp->retprobe;

 return 0;
}
