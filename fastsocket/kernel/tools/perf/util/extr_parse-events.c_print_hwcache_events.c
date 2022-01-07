
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 unsigned int PERF_COUNT_HW_CACHE_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_OP_MAX ;
 unsigned int PERF_COUNT_HW_CACHE_RESULT_MAX ;
 size_t PERF_TYPE_HW_CACHE ;
 int __perf_evsel__hw_cache_type_op_res_name (unsigned int,unsigned int,unsigned int,char*,int) ;
 char** event_type_descriptors ;
 int perf_evsel__is_cache_op_valid (unsigned int,unsigned int) ;
 int printf (char*,char*,...) ;
 int strglobmatch (char*,char const*) ;

int print_hwcache_events(const char *event_glob, bool name_only)
{
 unsigned int type, op, i, printed = 0;
 char name[64];

 for (type = 0; type < PERF_COUNT_HW_CACHE_MAX; type++) {
  for (op = 0; op < PERF_COUNT_HW_CACHE_OP_MAX; op++) {

   if (!perf_evsel__is_cache_op_valid(type, op))
    continue;

   for (i = 0; i < PERF_COUNT_HW_CACHE_RESULT_MAX; i++) {
    __perf_evsel__hw_cache_type_op_res_name(type, op, i,
         name, sizeof(name));
    if (event_glob != ((void*)0) && !strglobmatch(name, event_glob))
     continue;

    if (name_only)
     printf("%s ", name);
    else
     printf("  %-50s [%s]\n", name,
            event_type_descriptors[PERF_TYPE_HW_CACHE]);
    ++printed;
   }
  }
 }

 return printed;
}
