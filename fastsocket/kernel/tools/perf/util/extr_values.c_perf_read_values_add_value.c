
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct perf_read_values {int ** value; } ;


 int perf_read_values__findnew_counter (struct perf_read_values*,int ,char const*) ;
 int perf_read_values__findnew_thread (struct perf_read_values*,int ,int ) ;

void perf_read_values_add_value(struct perf_read_values *values,
    u32 pid, u32 tid,
    u64 rawid, const char *name, u64 value)
{
 int tindex, cindex;

 tindex = perf_read_values__findnew_thread(values, pid, tid);
 cindex = perf_read_values__findnew_counter(values, rawid, name);

 values->value[tindex][cindex] = value;
}
