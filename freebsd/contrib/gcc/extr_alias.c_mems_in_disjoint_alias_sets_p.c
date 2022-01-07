
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int MEM_ALIAS_SET (int ) ;
 int alias_sets_conflict_p (int ,int ) ;
 scalar_t__ flag_strict_aliasing ;
 int gcc_assert (int) ;

__attribute__((used)) static inline int
mems_in_disjoint_alias_sets_p (rtx mem1, rtx mem2)
{







  gcc_assert (flag_strict_aliasing
       || (!MEM_ALIAS_SET (mem1) && !MEM_ALIAS_SET (mem2)));

  return ! alias_sets_conflict_p (MEM_ALIAS_SET (mem1), MEM_ALIAS_SET (mem2));
}
