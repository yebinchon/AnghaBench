
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct mem_ref_group {scalar_t__ step; struct mem_ref_group* next; int * refs; int base; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ operand_equal_p (int ,int ,int ) ;
 struct mem_ref_group* xcalloc (int,int) ;

__attribute__((used)) static struct mem_ref_group *
find_or_create_group (struct mem_ref_group **groups, tree base,
        HOST_WIDE_INT step)
{
  struct mem_ref_group *group;

  for (; *groups; groups = &(*groups)->next)
    {
      if ((*groups)->step == step
   && operand_equal_p ((*groups)->base, base, 0))
 return *groups;


      if ((*groups)->step < step)
 break;
    }

  group = xcalloc (1, sizeof (struct mem_ref_group));
  group->base = base;
  group->step = step;
  group->refs = ((void*)0);
  group->next = *groups;
  *groups = group;

  return group;
}
