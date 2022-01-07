
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref* refs; struct mem_ref_group* next; } ;
struct mem_ref {scalar_t__ issue_prefetch_p; struct mem_ref* next; } ;


 int issue_prefetch_ref (struct mem_ref*,unsigned int,unsigned int) ;

__attribute__((used)) static void
issue_prefetches (struct mem_ref_group *groups,
    unsigned unroll_factor, unsigned ahead)
{
  struct mem_ref *ref;

  for (; groups; groups = groups->next)
    for (ref = groups->refs; ref; ref = ref->next)
      if (ref->issue_prefetch_p)
 issue_prefetch_ref (ref, unroll_factor, ahead);
}
