
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {scalar_t__ for_background; scalar_t__ for_kupdate; scalar_t__ for_reclaim; } ;


 int FLUSH_COND_STABLE ;
 int FLUSH_HIGHPRI ;
 int FLUSH_LOWPRI ;
 int FLUSH_STABLE ;

__attribute__((used)) static int wb_priority(struct writeback_control *wbc)
{
 if (wbc->for_reclaim)
  return FLUSH_HIGHPRI | FLUSH_STABLE;
 if (wbc->for_kupdate || wbc->for_background)
  return FLUSH_LOWPRI | FLUSH_COND_STABLE;
 return FLUSH_COND_STABLE;
}
