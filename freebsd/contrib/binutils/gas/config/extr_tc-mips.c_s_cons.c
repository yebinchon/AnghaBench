
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct insn_label_list {int * label; } ;
struct TYPE_3__ {struct insn_label_list* label_list; } ;
typedef TYPE_1__ segment_info_type ;


 scalar_t__ auto_align ;
 int cons (int) ;
 int mips_align (int,int ,int *) ;
 int mips_clear_insn_labels () ;
 int mips_emit_delays () ;
 int now_seg ;
 TYPE_1__* seg_info (int ) ;

__attribute__((used)) static void
s_cons (int log_size)
{
  segment_info_type *si = seg_info (now_seg);
  struct insn_label_list *l = si->label_list;
  symbolS *label;

  label = l != ((void*)0) ? l->label : ((void*)0);
  mips_emit_delays ();
  if (log_size > 0 && auto_align)
    mips_align (log_size, 0, label);
  mips_clear_insn_labels ();
  cons (1 << log_size);
}
