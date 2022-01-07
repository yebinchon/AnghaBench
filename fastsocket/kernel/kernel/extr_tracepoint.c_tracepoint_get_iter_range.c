
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int dummy; } ;



int tracepoint_get_iter_range(struct tracepoint **tracepoint,
 struct tracepoint *begin, struct tracepoint *end)
{
 if (!*tracepoint && begin != end) {
  *tracepoint = begin;
  return 1;
 }
 if (*tracepoint >= begin && *tracepoint < end)
  return 1;
 return 0;
}
