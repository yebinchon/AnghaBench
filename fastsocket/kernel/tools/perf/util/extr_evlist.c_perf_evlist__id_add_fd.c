
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int read_format; } ;
struct perf_evsel {TYPE_1__ attr; } ;
struct perf_evlist {int dummy; } ;
typedef int read_data ;


 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 int perf_evlist__id_add (struct perf_evlist*,struct perf_evsel*,int,int,int ) ;
 int read (int,int **,int) ;

__attribute__((used)) static int perf_evlist__id_add_fd(struct perf_evlist *evlist,
      struct perf_evsel *evsel,
      int cpu, int thread, int fd)
{
 u64 read_data[4] = { 0, };
 int id_idx = 1;

 if (!(evsel->attr.read_format & PERF_FORMAT_ID) ||
     read(fd, &read_data, sizeof(read_data)) == -1)
  return -1;

 if (evsel->attr.read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
  ++id_idx;
 if (evsel->attr.read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
  ++id_idx;

 perf_evlist__id_add(evlist, evsel, cpu, thread, read_data[id_idx]);
 return 0;
}
