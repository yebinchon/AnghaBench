
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct insn_label_list {struct insn_label_list* next; int * label; } ;
struct TYPE_3__ {struct insn_label_list* label_list; } ;
typedef TYPE_1__ segment_info_type ;


 int dwarf2_emit_label (int *) ;
 struct insn_label_list* free_insn_labels ;
 int now_seg ;
 TYPE_1__* seg_info (int ) ;
 scalar_t__ xmalloc (int) ;

void
mips_define_label (symbolS *sym)
{
  segment_info_type *si = seg_info (now_seg);
  struct insn_label_list *l;

  if (free_insn_labels == ((void*)0))
    l = (struct insn_label_list *) xmalloc (sizeof *l);
  else
    {
      l = free_insn_labels;
      free_insn_labels = l->next;
    }

  l->label = sym;
  l->next = si->label_list;
  si->label_list = l;




}
