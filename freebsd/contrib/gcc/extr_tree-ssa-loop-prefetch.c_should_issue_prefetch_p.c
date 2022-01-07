
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref {scalar_t__ prefetch_before; } ;


 scalar_t__ PREFETCH_ALL ;

__attribute__((used)) static bool
should_issue_prefetch_p (struct mem_ref *ref)
{


  if (ref->prefetch_before != PREFETCH_ALL)
    return 0;

  return 1;
}
