
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref* refs; struct mem_ref_group* next; } ;
struct mem_ref {int issue_prefetch_p; unsigned int prefetch_mod; struct mem_ref* next; } ;


 unsigned int SIMULTANEOUS_PREFETCHES ;
 int TDF_DETAILS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*,unsigned int) ;
 int should_issue_prefetch_p (struct mem_ref*) ;

__attribute__((used)) static bool
schedule_prefetches (struct mem_ref_group *groups, unsigned unroll_factor,
       unsigned ahead)
{
  unsigned max_prefetches, n_prefetches;
  struct mem_ref *ref;
  bool any = 0;

  max_prefetches = (SIMULTANEOUS_PREFETCHES * unroll_factor) / ahead;
  if (max_prefetches > (unsigned) SIMULTANEOUS_PREFETCHES)
    max_prefetches = SIMULTANEOUS_PREFETCHES;

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, "Max prefetches to issue: %d.\n", max_prefetches);

  if (!max_prefetches)
    return 0;






  for (; groups; groups = groups->next)
    for (ref = groups->refs; ref; ref = ref->next)
      {
 if (!should_issue_prefetch_p (ref))
   continue;

 ref->issue_prefetch_p = 1;



 n_prefetches = ((unroll_factor + ref->prefetch_mod - 1)
   / ref->prefetch_mod);
 if (max_prefetches <= n_prefetches)
   return 1;

 max_prefetches -= n_prefetches;
 any = 1;
      }

  return any;
}
