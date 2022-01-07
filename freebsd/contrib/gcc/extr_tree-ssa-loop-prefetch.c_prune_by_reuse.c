
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ref_group {struct mem_ref_group* next; } ;


 int prune_group_by_reuse (struct mem_ref_group*) ;

__attribute__((used)) static void
prune_by_reuse (struct mem_ref_group *groups)
{
  for (; groups; groups = groups->next)
    prune_group_by_reuse (groups);
}
