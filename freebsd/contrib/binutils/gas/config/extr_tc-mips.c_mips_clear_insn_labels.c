
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct insn_label_list {struct insn_label_list* next; } ;
struct TYPE_3__ {struct insn_label_list* label_list; } ;
typedef TYPE_1__ segment_info_type ;


 struct insn_label_list* free_insn_labels ;
 scalar_t__ now_seg ;
 TYPE_1__* seg_info (scalar_t__) ;

__attribute__((used)) static inline void
mips_clear_insn_labels (void)
{
  register struct insn_label_list **pl;
  segment_info_type *si;

  if (now_seg)
    {
      for (pl = &free_insn_labels; *pl != ((void*)0); pl = &(*pl)->next)
 ;

      si = seg_info (now_seg);
      *pl = si->label_list;
      si->label_list = ((void*)0);
    }
}
