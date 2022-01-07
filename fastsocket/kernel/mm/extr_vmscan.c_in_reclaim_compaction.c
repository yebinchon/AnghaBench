
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scan_control {scalar_t__ order; } ;


 scalar_t__ COMPACTION_BUILD ;
 int DEF_PRIORITY ;
 scalar_t__ PAGE_ALLOC_COSTLY_ORDER ;

__attribute__((used)) static bool in_reclaim_compaction(int priority, struct scan_control *sc)
{
 if (COMPACTION_BUILD && sc->order &&
   (sc->order > PAGE_ALLOC_COSTLY_ORDER ||
    priority < DEF_PRIORITY - 2))
  return 1;

 return 0;
}
