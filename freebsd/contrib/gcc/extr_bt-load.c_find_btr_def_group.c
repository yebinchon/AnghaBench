
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct btr_def_group_s {int dummy; } ;
typedef int rtx ;
typedef TYPE_1__* btr_def_group ;
typedef TYPE_2__* btr_def ;
struct TYPE_7__ {TYPE_1__* group; struct TYPE_7__* next_this_group; int insn; } ;
struct TYPE_6__ {TYPE_2__* members; struct TYPE_6__* next; int src; } ;


 int SET_SRC (int ) ;
 scalar_t__ insn_sets_btr_p (int ,int,int *) ;
 int migrate_btrl_obstack ;
 TYPE_1__* obstack_alloc (int *,int) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int single_set (int ) ;

__attribute__((used)) static void
find_btr_def_group (btr_def_group *all_btr_def_groups, btr_def def)
{
  if (insn_sets_btr_p (def->insn, 1, ((void*)0)))
    {
      btr_def_group this_group;
      rtx def_src = SET_SRC (single_set (def->insn));



      for (this_group = *all_btr_def_groups;
    this_group != ((void*)0);
    this_group = this_group->next)
 if (rtx_equal_p (def_src, this_group->src))
   break;

      if (!this_group)
 {
   this_group = obstack_alloc (&migrate_btrl_obstack,
          sizeof (struct btr_def_group_s));
   this_group->src = def_src;
   this_group->members = ((void*)0);
   this_group->next = *all_btr_def_groups;
   *all_btr_def_groups = this_group;
 }
      def->group = this_group;
      def->next_this_group = this_group->members;
      this_group->members = def;
    }
  else
    def->group = ((void*)0);
}
