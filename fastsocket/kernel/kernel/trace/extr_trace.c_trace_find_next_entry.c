
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_iterator {int dummy; } ;
struct trace_entry {int dummy; } ;


 struct trace_entry* __find_next_entry (struct trace_iterator*,int*,int *) ;

struct trace_entry *trace_find_next_entry(struct trace_iterator *iter,
       int *ent_cpu, u64 *ent_ts)
{
 return __find_next_entry(iter, ent_cpu, ent_ts);
}
