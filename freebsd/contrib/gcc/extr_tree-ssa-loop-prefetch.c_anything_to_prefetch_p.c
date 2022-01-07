
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref* refs; struct mem_ref_group* next; } ;
struct mem_ref {struct mem_ref* next; } ;


 scalar_t__ should_issue_prefetch_p (struct mem_ref*) ;

__attribute__((used)) static bool
anything_to_prefetch_p (struct mem_ref_group *groups)
{
  struct mem_ref *ref;

  for (; groups; groups = groups->next)
    for (ref = groups->refs; ref; ref = ref->next)
      if (should_issue_prefetch_p (ref))
 return 1;

  return 0;
}
