
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_rpipe {int seg_list; int segs_available; } ;


 scalar_t__ atomic_inc_return (int *) ;
 int list_empty (int *) ;

__attribute__((used)) static inline int rpipe_avail_inc(struct wa_rpipe *rpipe)
{
 return atomic_inc_return(&rpipe->segs_available) > 0
  && !list_empty(&rpipe->seg_list);
}
