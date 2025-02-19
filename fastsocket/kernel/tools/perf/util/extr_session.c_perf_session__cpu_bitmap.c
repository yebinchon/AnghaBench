
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {int dummy; } ;
struct TYPE_2__ {int sample_type; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct cpu_map {int nr; int* map; } ;


 int MAX_NR_CPUS ;
 int PERF_SAMPLE_CPU ;
 int PERF_TYPE_MAX ;
 struct cpu_map* cpu_map__new (char const*) ;
 struct perf_evsel* perf_session__find_first_evtype (struct perf_session*,int) ;
 int pr_err (char*,...) ;
 int set_bit (int,unsigned long*) ;

int perf_session__cpu_bitmap(struct perf_session *session,
        const char *cpu_list, unsigned long *cpu_bitmap)
{
 int i;
 struct cpu_map *map;

 for (i = 0; i < PERF_TYPE_MAX; ++i) {
  struct perf_evsel *evsel;

  evsel = perf_session__find_first_evtype(session, i);
  if (!evsel)
   continue;

  if (!(evsel->attr.sample_type & PERF_SAMPLE_CPU)) {
   pr_err("File does not contain CPU events. "
          "Remove -c option to proceed.\n");
   return -1;
  }
 }

 map = cpu_map__new(cpu_list);
 if (map == ((void*)0)) {
  pr_err("Invalid cpu_list\n");
  return -1;
 }

 for (i = 0; i < map->nr; i++) {
  int cpu = map->map[i];

  if (cpu >= MAX_NR_CPUS) {
   pr_err("Requested CPU %d too large. "
          "Consider raising MAX_NR_CPUS\n", cpu);
   return -1;
  }

  set_bit(cpu, cpu_bitmap);
 }

 return 0;
}
