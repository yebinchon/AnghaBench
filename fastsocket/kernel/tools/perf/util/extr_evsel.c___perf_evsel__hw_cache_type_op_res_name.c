
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ** perf_evsel__hw_cache ;
 int ** perf_evsel__hw_cache_op ;
 int ** perf_evsel__hw_cache_result ;
 int scnprintf (char*,size_t,char*,int ,int ,...) ;

int __perf_evsel__hw_cache_type_op_res_name(u8 type, u8 op, u8 result,
         char *bf, size_t size)
{
 if (result) {
  return scnprintf(bf, size, "%s-%s-%s", perf_evsel__hw_cache[type][0],
     perf_evsel__hw_cache_op[op][0],
     perf_evsel__hw_cache_result[result][0]);
 }

 return scnprintf(bf, size, "%s-%s", perf_evsel__hw_cache[type][0],
    perf_evsel__hw_cache_op[op][1]);
}
