
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ valueT ;
struct insn_label_list {int label; struct insn_label_list* next; } ;
struct TYPE_4__ {struct insn_label_list* label_list; } ;
typedef TYPE_1__ segment_info_type ;
struct TYPE_5__ {scalar_t__ mips16; } ;


 scalar_t__ S_GET_SEGMENT (int ) ;
 int S_SET_VALUE (int ,scalar_t__) ;
 int assert (int) ;
 int frag_now ;
 scalar_t__ frag_now_fix () ;
 TYPE_3__ mips_opts ;
 scalar_t__ now_seg ;
 TYPE_1__* seg_info (scalar_t__) ;
 int symbol_set_frag (int ,int ) ;

__attribute__((used)) static void
mips_move_labels (void)
{
  segment_info_type *si = seg_info (now_seg);
  struct insn_label_list *l;
  valueT val;

  for (l = si->label_list; l != ((void*)0); l = l->next)
    {
      assert (S_GET_SEGMENT (l->label) == now_seg);
      symbol_set_frag (l->label, frag_now);
      val = (valueT) frag_now_fix ();

      if (mips_opts.mips16)
 ++val;
      S_SET_VALUE (l->label, val);
    }
}
