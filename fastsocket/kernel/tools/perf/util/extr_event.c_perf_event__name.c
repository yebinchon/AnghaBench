
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** perf_event__names ;

const char *perf_event__name(unsigned int id)
{
 if (id >= ARRAY_SIZE(perf_event__names))
  return "INVALID";
 if (!perf_event__names[id])
  return "UNKNOWN";
 return perf_event__names[id];
}
